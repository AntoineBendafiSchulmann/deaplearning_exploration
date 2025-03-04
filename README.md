# Exploration of Deep Learning

#  1️⃣ Notebook 1 : 
modèle PyTorch sur un dataset de chiffres manuscrits**

# 2️⃣ Notebook 2 : LSTM avec Tokenisation BPE**
Créer un modèle **LSTM** capable de générer du texte
-> **Objectif** : Créer un modèle **LSTM** capable de générer du texte 

# 3️⃣ Notebook 3 : Transformers
Créer un modèle **Transformer** capable de générer du texte
-> **Objectif** : Créer un **Transformer** , avec un **encodeur (émetteur) et un décodeur (récepteur)**, pour la génération de texte.

# 4️⃣ Notebook 4 : RAG

pipeline de Retrieval-Augmented Generation (RAG) basé sur Langchain, ChromaDB et un modèle local (Mistral 7B).

- Modèle Mistral 7B en local (llama-cpp-python)
- Indexation des documents (connaissances.txt + document.pdf) avec ChromaDB
- Recherche d’informations avant de répondre (similarity_search)
- API Flask opérationnelle (/chat avec CORS activé)
- Interface web interactive (index.html)
- Synthèse vocale (speechSynthesis) pour lire les réponses


questions pour voir si le RAG fonctionne bien : 

Quelles sont les différentes variantes de la tarte aux pommes ?
Comment faire une tarte aux pommes ?