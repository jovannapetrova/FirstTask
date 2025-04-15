# Користете Debian слика како основа
FROM debian:latest

# Инсталирајте компајлер или други потребни алатки
RUN apt-get update && apt-get install -y build-essential

# Копирајте ги фајловите што треба да ги компајлирате
COPY . .

# Извршете командата за компилација
RUN make all
