# Usamos la imagen base de Ollama
FROM ollama/ollama:latest

# Evitamos problemas de conexión local durante el build
ENV OLLAMA_HOST=0.0.0.0

# Iniciamos el servidor temporalmente para descargar el modelo "bakeado" en la imagen
# Usamos exactamente el tag que aparece en tu enlace: qwen3:1.7b
RUN /bin/sh -c "ollama serve & sleep 5 && ollama pull qwen3:1.7b"