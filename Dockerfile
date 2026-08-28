FROM jupyter/base-notebook:python-3.11

USER root

RUN pip install --no-cache-dir \
    langchain \
    langchain-community \
    langchain-text-splitters \
    faiss-cpu \
    sentence-transformers \
    transformers \
    accelerate \
    bitsandbytes \
    torch \
    pandas

COPY midterm.ipynb /home/jovyan/notebook.ipynb
COPY defacto_inventory_100.csv /home/jovyan/defacto_inventory_100.csv
COPY policy.txt /home/jovyan/policy.txt

USER jovyan
WORKDIR /home/jovyan

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''"]
