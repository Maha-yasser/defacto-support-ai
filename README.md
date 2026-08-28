# defacto-support-ai
# DeFacto Egypt RAG Customer Support Bot

An enterprise-grade Conversational Retrieval-Augmented Generation (RAG) system built to handle customer support inquiries based on internal policy and inventory data. This pipeline leverages a locally hosted, 4-bit quantized Mistral-7B model to provide context-aware, faithful, and relevant responses while minimizing hallucinations.

## 🚀 Key Features

* **Multi-Source Knowledge Base:** Ingests and processes both structured inventory data (`defacto_inventory_100.csv`) and unstructured text (`policy.txt`).
* **Advanced RAG Pipeline:** Utilizes LangChain for orchestration, `sentence-transformers/all-MiniLM-L6-v2` for dense embeddings, and FAISS for efficient hybrid vector search.
* **Optimized Local Inference:** Runs Mistral-7B (`Mistral-7B-Instruct-v0.3`) locally using `bitsandbytes` 4-bit quantization for a reduced memory footprint.
* **Context-Aware Memory:** Implements `deque` memory management for intelligent chat history rephrasing and continuous conversational flow.
* **Automated Evaluation:** Integrated with Ragas to continuously monitor response faithfulness and relevancy.
* **Production-Ready Architecture:** Designed for transition from a local notebook prototype to a deployed system using FastAPI, Dockerized containers, and GitHub Actions for CI/CD workflows.

## 🛠️ Technology Stack

* **LLM & Frameworks:** LangChain, Hugging Face Transformers, PyTorch
* **Vector Store:** FAISS (CPU)
* **API & Deployment:** FastAPI, Docker
* **Evaluation & MLOps:** Ragas, GitHub Actions

## ⚙️ Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git)
   cd YOUR_REPOSITORY_NAME
