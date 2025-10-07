# 🧠 Understanding Self-Attention in Transformers

This README walks through the **self-attention mechanism** in transformer models using a simple sentence. It covers token embeddings, attention score computation, softmax normalization, and output generation.

---

## 📘 Example Sentence

**"She eats apples."**

Tokens: `["She", "eats", "apples"]`

---

## 🔡 Step 1: Token Embeddings

Assume each token is embedded into a 3-dimensional vector:

| Token   | Embedding (E)     |
|---------|-------------------|
| She     | [1, 0, 1]         |
| eats    | [0, 1, 1]         |
| apples  | [1, 1, 0]         |

---

## 🔁 Step 2: Generate Q, K, V Vectors

Each token embedding is transformed into three distinct representations by applying learned weight matrices. This process includes the following substeps:

### 2.1. Start with Token Embeddings

Each token in the input sentence is converted into a vector (e.g., `[1, 0, 1]` for "She").

### 2.2. Apply Linear Transformations

The model uses three separate weight matrices to project the embeddings into different spaces:

- **$W_Q$**: for generating Query vectors
- **$W_K$**: for generating Key vectors
- **$W_V$**: for generating Value vectors

These matrices are learned during training via backpropagation.

### 2.3. Matrix Multiplication

For each token embedding $x$, we compute:

$$ Q = x \cdot W_Q $$

$$ K = x \cdot W_K $$

$$ V = x \cdot W_V $$

This converts the original embedding into the Query, Key, and Value vectors used in the self-attention mechanism.

| Token   | Query (Q)  | Key (K)   | Value (V)  |
|---------|------------|-----------|------------|
| She     | [1, 0, 1]  | [1, 1, 0] | [0, 1, 1]  |
| eats    | [0, 1, 1]  | [1, 0, 1] | [1, 0, 1]  |
| apples  | [1, 1, 0]  | [0, 1, 1] | [1, 1, 0]  |

---

# 🧠 How Q, K, V Vectors Are Generated

When we say that Query (Q), Key (K), and Value (V) vectors are derived from learned weight matrices, we mean that the model uses trainable linear transformations to project each token's embedding into three different spaces.

## 🔧 Step-by-Step Breakdown

### 2.2. Apply Linear Transformations

The model uses three separate weight matrices to project the embeddings into different spaces:

- **$W_Q$**: for generating Query vectors
- **$W_K$**: for generating Key vectors
- **$W_V$**: for generating Value vectors

These matrices are learned during training via backpropagation.

### 2.3. Matrix Multiplication

For each token embedding $x$, we compute:

$$
Q = x \cdot W_Q
$$

$$
K = x \cdot W_K
$$

$$
V = x \cdot W_V
$$

This transforms the original embedding into three distinct representations, each serving a specific role in the attention mechanism.

## 📐 Why Use Separate Matrices?

Each matrix extracts a different aspect of the token’s meaning:

- **Query** asks: *“What am I looking for?”*
- **Key** answers: *“What do I offer?”*
- **Value** delivers: *“Here’s my actual content.”*

By learning these transformations, the model can adaptively decide what information is relevant for each token in context.

## 🧪 Example

Let's say:

- **Embedding for "She"**: `[1, 0, 1]`

Assume the weight matrix for Query is:

```python
W_Q = [
    [1, 0],
    [0, 1],
    [1, 1]
]
```

Then compute:

$$
Q = [1, 0, 1] \cdot W_Q = [1 \times 1 + 0 \times 0 + 1 \times 1, \; 1 \times 0 + 0 \times 1 + 1 \times 1] = [2, 1]
$$

You would perform similar multiplications for $W_K$ and $W_V$.

## 🏗️ Training the Weights

These matrices $W_Q$, $W_K$, and $W_V$ are initialized randomly and updated during training using gradient descent. The model learns to adjust them so that the attention mechanism captures meaningful relationships between tokens.


## 🧮 Step 3: Dot Product Scores

Compute attention scores for "She" (Q = [1, 0, 1]):

- Q·K(She) = 1×1 + 0×1 + 1×0 = **1**
- Q·K(eats) = 1×1 + 0×0 + 1×1 = **2**
- Q·K(apples) = 1×0 + 0×1 + 1×1 = **1**

Raw scores: `[1, 2, 1]`

---

## 🔥 Step 4: Apply Softmax

Convert scores to probabilities:

- exp(1) ≈ 2.718  
- exp(2) ≈ 7.389  
- exp(1) ≈ 2.718  
- Sum ≈ 12.825

Softmax weights:
- She → 0.212  
- eats → 0.576  
- apples → 0.212

---

## 🧠 Step 5: Weighted Sum of Values

Multiply each Value vector by its weight and sum:

- She: 0.212 × [0, 1, 1] = [0, 0.212, 0.212]
- eats: 0.576 × [1, 0, 1] = [0.576, 0, 0.576]
- apples: 0.212 × [1, 1, 0] = [0.212, 0.212, 0]

Final output for "She":
[0.788, 0.424, 0.788]


---

## ✅ Summary

This output is the **contextualized representation** of "She" after self-attention. The same process is repeated for each token in the sentence.

---

## 🚀 Next Steps

- Try computing attention for "eats" and "apples"
- Visualize the attention matrix
- Implement this in Python or PyTorch

---

