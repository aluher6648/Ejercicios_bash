# Utiliza la imagen base de Ubuntu Jammy
FROM ubuntu:jammy

# Instala nano 
RUN apt update && apt install -y nano 

# Crea el usuario con el UID y GID especificados
RUN groupadd -g 30025 domainusers 
RUN useradd -m -u 30016 -g 30025  alu11516648

# Establece el usuario por defecto
USER alu11516648

# Establece el directorio de trabajo
WORKDIR /home/alu11516648

# Comando por defecto cuando se ejecuta el contenedor
CMD ["/bin/bash"]
