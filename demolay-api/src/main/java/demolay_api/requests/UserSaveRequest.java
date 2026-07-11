package demolay_api.requests;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.time.LocalDate;

public record UserSaveRequest(
        @NotBlank
        String demolayId,

        @NotBlank
        String cpf,

        @NotBlank
        String name,

        @NotBlank
        String email,

        @NotNull
        LocalDate birthDate
) {
}
