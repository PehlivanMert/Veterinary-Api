package dev.patika.veterinarymanagementsystem.dto.response.vaccine;

import dev.patika.veterinarymanagementsystem.dto.response.animal.AnimalResponse;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VaccineProtectionDateAndAnimalResponse {
    private Long vaccineId;
    private String name;
    private String code;
    private LocalDate protectionFinishDate;
    private AnimalResponse animal;

}
