# DemolayApp

Aplicativo de controle de presença e reuniões para Capítulos DeMolay, com backend e
frontend separados no mesmo repositório (monorepo).

Projeto de estudo — desenvolvido como aprendizado prático de Flutter (frontend mobile) e
Spring Boot 4 (backend), com autenticação própria (JWT + hash de senha) e persistência em
Firebase Firestore.

## Estrutura do repositório

```
demolay-app/
├── backend/
│   └── demolay-api/       # API REST em Java 25 + Spring Boot 4.1
├── frontend/
│   └── demolay_app/       # App mobile em Flutter
├── .gitignore
├── CLAUDE.md               # comportamento do Claude Code neste projeto (não versionado)
└── README.md
```

## Stack

**Backend**
- Java 25 (LTS)
- Spring Boot 4.1
- Spring Security (autenticação JWT)
- Firebase Admin SDK (Firestore)
- Maven

**Frontend**
- Flutter (Dart)
- Android/iOS via emulador ou dispositivo físico

**Banco de dados**
- Firebase Firestore (NoSQL)

## Funcionalidades planejadas

- [ ] Autenticação (cadastro/login) com JWT e senha criptografada (BCrypt)
- [ ] Registro de presença em reuniões
- [ ] Controle/histórico de reuniões
- [ ] Gestão de membros do Capítulo

## Como rodar o backend

Pré-requisitos: JDK 25 instalado.

```bash
cd backend/demolay-api
./mvnw spring-boot:run
```

A API sobe por padrão em `http://localhost:8080`.

> É necessário colocar o arquivo de credencial do Firebase
> (`firebase-service-account.json`) na pasta indicada na configuração do projeto — esse
> arquivo **não é versionado** (veja `.gitignore`) e precisa ser gerado individualmente no
> Firebase Console.

## Como rodar o frontend

Pré-requisitos: Flutter SDK instalado, emulador Android configurado ou dispositivo físico
conectado via USB com depuração ativada.

```bash
cd frontend/demolay_app
flutter pub get
flutter run
```

## Status do projeto

🚧 Em desenvolvimento inicial — projeto de aprendizado, evoluindo de forma incremental.