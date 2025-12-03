# Custom PrivateGPT 🔒

A customized version of [PrivateGPT](https://github.com/zylon-ai/private-gpt) - a production-ready AI application that allows you to ask questions about your documents using Large Language Models (LLMs), with 100% privacy. No data leaves your execution environment.

![Gradio UI](/fern/docs/assets/ui.png?raw=true)

## ✨ Features

- **100% Private**: All document processing and LLM inference runs locally
- **Multiple Modes**: RAG, Search, Basic Chat, and Summarize modes
- **Ollama Integration**: Pre-configured to work with Ollama for local LLM inference
- **Document Support**: Upload and query PDF, DOCX, TXT, and more
- **Real-time Streaming**: Responses stream in real-time for immediate feedback
- **Source Citations**: See exactly which documents informed each answer
- **OpenAI-Compatible API**: Integrate with existing applications seamlessly

## 🚀 Quick Start

### Prerequisites

- Python 3.11
- [Ollama](https://ollama.com/) installed and running
- Poetry (for dependency management)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/bhavyup/custom-privateGPT.git
   cd custom-privateGPT
   ```

2. **Install dependencies**
   ```bash
   poetry install --extras "ui llms-ollama embeddings-ollama vector-stores-qdrant"
   ```

3. **Start Ollama** (if not already running)
   ```bash
   ollama serve
   ```

4. **Run the application**
   ```bash
   poetry run python -m private_gpt
   ```
   
   Or use the batch file (Windows):
   ```bash
   run_ollama.bat
   ```

5. **Open the UI**
   
   Navigate to http://localhost:8001 in your browser.

## 🛠️ Configuration

The application uses Ollama by default. Key settings in `settings.yaml`:

| Setting | Value | Description |
|---------|-------|-------------|
| LLM Mode | `ollama` | Uses Ollama for LLM inference |
| LLM Model | `llama3.1` | Default language model |
| Embedding Model | `nomic-embed-text` | For document embeddings |
| Vector Store | `qdrant` | Local vector database |
| Port | `8001` | Web UI port |

## 📁 Project Structure

```
private_gpt/
├── components/          # LLM, Embedding, VectorStore components
├── server/              # FastAPI routers and services
├── settings/            # Configuration management
├── ui/                  # Gradio web interface
└── main.py              # Application entry point
```

## 🔧 Tech Stack

| Technology | Purpose |
|------------|---------|
| **Python 3.11** | Runtime |
| **FastAPI** | REST API |
| **Gradio** | Web UI |
| **LlamaIndex** | RAG Framework |
| **Ollama** | Local LLM |
| **Qdrant** | Vector Database |

## 📖 Usage

1. **Upload Documents**: Click "Upload File(s)" to add your documents
2. **Select Mode**: Choose RAG, Search, Basic Chat, or Summarize
3. **Ask Questions**: Type your question and get AI-powered answers
4. **View Sources**: See which documents contributed to the response

## 🙏 Credits

This project is a customized fork of [PrivateGPT by Zylon](https://github.com/zylon-ai/private-gpt).

### Original Project Supporters:
- [Qdrant](https://qdrant.tech/) - Vector database
- [LlamaIndex](https://www.llamaindex.ai/) - RAG framework
- [Ollama](https://ollama.com/) - Local LLM inference

## 📄 License

This project is licensed under the Apache-2.0 License - see the [LICENSE](LICENSE) file for details.

---

**Maintained by [Bhavy](https://github.com/bhavyup)**
