# Exploration - Deep Learning

#  1️⃣ Notebook 1 : 
modèle PyTorch sur un dataset de chiffres manuscrits

# 2️⃣ Notebook 2 : LSTM avec Tokenisation BPE
Créer un modèle **LSTM** capable de générer du texte
-> **Objectif** : Créer un modèle **LSTM** capable de générer du texte 

# 3️⃣ Notebook 3 : Transformers
Créer un modèle **Transformer** capable de générer du texte
-> **Objectif** : Créer un **Transformer** , avec un **encodeur (émetteur) et un décodeur (récepteur)**, pour la génération de texte.


# 4️⃣  Notebook 4 : RAG - Chatbot Intelligent avec Recherche Documentaire et Synthèse Vocale

Ce **pipeline RAG** (**Retrieval-Augmented Generation**) permet d'**améliorer la précision des réponses d'un modèle de langage** en le forçant à **ne pas se baser uniquement sur sa donnée d'entraînement**, mais à **synthétiser des informations extraites de documents**. Grâce à ce processus, les réponses sont **plus précises, actualisées et adaptées aux documents fournis dans le fichier  ```documents.zip``` et à mettre dans un dossier ```/data```** vous aurez donc deux fichiers `connaissances.txt` et  `document.pdf`.

## 🛠️ Fonctionnalités
- 🔍 **Recherche augmentée** : interroge des documents locaux (`connaissances.txt`, `document.pdf`) avant de générer une réponse.  
- 💡 **Modèle de génération Mistral 7B** (llama-cpp-python) exécuté **en local**.  
- 📚 **Stockage et recherche rapide d’informations avec ChromaDB**  pour récupérer les informations les plus pertinentes avant de générer une réponse.
  - 1️⃣ Premier lancement → L’index est créé et sauvegardé dans ```models/chromadb```
  - 2️⃣ Exécutions suivantes → L’index est directement rechargé depuis ```models/chromadb```, sans tout recalculer.
  → L’index c'est simplement une base de données optimisée qui stocke les versions vectorisées de `connaissances.txt` et de `document.pdf` , ce qui permet au modèle de rechercher rapidement des informations pertinentes avant de répondre et pas recalculer à chaque fois.

- 🌐 **API Flask** (`/chat`) qui gère la communication entre le modèle et l'interface web.  
- 🎤 **Synthèse vocale Bark** : **une voix pour la question, une autre pour la réponse**.  
- 🖥️ **Interface web (`index.html`) pour interagir avec le chatbot**.

---

## ⚡ Comment l’utiliser ?
1. **Lancer le Jupyter Notebook**  
2. **L'interface `index.html` sera générée automatiquement**  
3. **Ouvrir `index.html` dans un navigateur**  
![page web](img/index_example_web_page.png)
4. **Poser une question (ex. : "Comment faire une tarte aux pommes ?")**  
5. **Le chatbot dans un premier temps répète la question après l'avoir intégrée puis la répète à voix haute, puis l'analyse des documents se lance, génère une réponse et la lit à voix haute également**  
![page web après réponse](img/index_example_web_page_answered.png)
---



## ✅ Questions de test pour vérifier le RAG
- ```Quelles sont les différentes variantes de la tarte aux pommes ?```  
- ```Comment faire une tarte aux pommes ?```  
- ```Quel est le secret d’une bonne tarte aux pommes ?``` 

---

## 💡 Améliorations possibles
- 🔊 **Utiliser une voix encore plus naturelle** (XTTS, Coqui-TTS...)  
- ☁️ **Déployer l’API Flask en ligne** pour l’utiliser à distance  

