@echo off
echo Starting PrivateGPT with Ollama LLM + HuggingFace Embeddings...
echo.
echo This uses HuggingFace embeddings (more stable than Ollama)
echo LLM: llama3.2 via Ollama
echo Embeddings: BAAI/bge-small-en-v1.5 via HuggingFace (CPU)
echo.
set PGPT_PROFILES=ollama-hf
"C:\Users\91952\AppData\Local\Programs\Python\Python311\Scripts\poetry.exe" run python -m private_gpt
pause
