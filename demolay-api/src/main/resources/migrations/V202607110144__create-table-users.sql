CREATE TABLE users (
    id                  VARCHAR(40)  NOT NULL,
    demolay_id          VARCHAR(20),
    cpf                 VARCHAR(14)  NOT NULL,
    name                VARCHAR(255) NOT NULL,
    birth_date          DATE,
    created_at          TIMESTAMP    NOT NULL,
    updated_at          TIMESTAMP,
    created_by_user_id  VARCHAR(40),
    updated_by_user_id  VARCHAR(40),
    deleted             BOOLEAN      NOT NULL DEFAULT FALSE,

    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT fk_users_created_by FOREIGN KEY (created_by_user_id) REFERENCES users(id),
    CONSTRAINT fk_users_updated_by FOREIGN KEY (updated_by_user_id) REFERENCES users(id)
);
