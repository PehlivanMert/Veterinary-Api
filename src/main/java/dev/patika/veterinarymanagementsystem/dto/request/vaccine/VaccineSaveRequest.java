package dev.patika.veterinarymanagementsystem.dto.request.vaccine;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VaccineSaveRequest {
    @NotNull(message = "Aşı ismi boş veya null olamaz")
    private String name;
    @NotNull(message = "Koruyuculuk başlama tarihi boş veya null olamaz")
    private LocalDate protectionStartDate;
    @NotNull(message = "Koruyuculuk bitme tarihi boş veya null olamaz")
    private LocalDate protectionFinishDate;
    @NotNull(message = "Kod bölümü boş veya null olamaz")
    private String vaccineCode;
    @NotNull(message = "Hayvan id'si boş veya null olamaz")
    private Long animalId;
}
