#include <iostream>
#include <fstream>
#include <chrono>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

class StreamingJsonLogger {
private:
    std::ofstream out_file;
    bool first_entry = true;

public:
    StreamingJsonLogger(const std::string& filename) {
        out_file.open(filename);
        if (!out_file.is_open()) {
            throw std::runtime_error("Cannot open file for writing");
        }

        // Начало JSON-документа
        out_file << "{\n  \"description\": \"Streaming double values with timestamps\",\n";
        out_file << "  \"data\": [\n";
    }

    ~StreamingJsonLogger() {
        if (out_file.is_open()) {
            // Завершение JSON-документа
            out_file << "\n  ]\n}";
            out_file.close();
        }
    }

    void log_value(double value) {
        auto now = std::chrono::system_clock::now();
        auto timestamp = std::chrono::duration_cast<std::chrono::microseconds>(
                             now.time_since_epoch()).count();

        json entry = {
            {"value", value},
            {"timestamp", timestamp}
        };

        // Добавляем запятую перед всеми элементами кроме первого
        if (!first_entry) {
            out_file << ",\n";
        } else {
            first_entry = false;
        }

        out_file << "    " << entry.dump();  // Записываем сразу в файл

        // Гарантируем, что данные записаны на диск
        out_file.flush();
    }
};

void useJsonWrite(std::vector<double> &data){
    StreamingJsonLogger logger("application_log.json");

    for (auto &it : data) {
        logger.log_value(it);  // Каждое значение записывается немедленно
    }
};
const int count = 100000;
const char* filename = "doubles.bin";

void writeBloks(std::vector<double> &data) {
    std::ofstream out_file(filename, std::ios::binary);
    out_file.write(reinterpret_cast<const char*>(data.data()), count * sizeof(double));
    out_file.close();
};

int main() {
    std::vector<double> data;

    // Заполнение массива данными
    for (int i = 0; i < count; ++i) {
        data.push_back(i * 0.5);
    }

    // Измерение времени записи
    auto write_blocks_start = std::chrono::high_resolution_clock::now();

    writeBloks(data);
    //useJsonWrite(data);

    auto write_blocks_end = std::chrono::high_resolution_clock::now();
    auto write_blocks_duration = std::chrono::duration_cast<std::chrono::microseconds>(write_blocks_end - write_blocks_start);

    // Измерение времени записи
    auto write_start = std::chrono::high_resolution_clock::now();

    //writeBloks(data);
    useJsonWrite(data);

    auto write_end = std::chrono::high_resolution_clock::now();
    auto write_duration = std::chrono::duration_cast<std::chrono::microseconds>(write_end - write_start);


    std::cout << "Время записи блоками: " << write_blocks_duration.count() << " микросекунд\n";
    std::cout << "Время записи json: " << write_duration.count() << " микросекунд\n";

    return 0;
}
