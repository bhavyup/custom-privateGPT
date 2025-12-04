@echo off
echo Starting PrivateGPT with Gemini API on PORT 8002...
echo.
echo LLM: Google Gemini 1.5 Flash (via OpenAI-compatible API)
echo Embeddings: BAAI/bge-small-en-v1.5 (HuggingFace)
echo URL: http://localhost:8002
echo.
set GOOGLE_API_KEY=AIzaSyCa549KHXaTMrKGnL3jkaa39ukm5jM-91I
set PGPT_PROFILES=gemini-openai
"C:\Users\91952\AppData\Local\Programs\Python\Python311\Scripts\poetry.exe" run python -m private_gpt
pause
