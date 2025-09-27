# Attention Mechanism: Q, K, and V Definitions
## How Q, K, and V Are Computed

In the attention mechanism, each input token is transformed into three different vectors: Query (Q), Key (K), and Value (V). This is done by multiplying the input embedding (or the previous layer’s output) by three different learned weight matrices:

- **Query (Q):**
   $$ Q = XW^Q $$
   Where $X$ is the input vector for a token, and $W^Q$ is the Query weight matrix (learned during training). The Query vector represents what information the token is seeking from other tokens.

- **Key (K):**
   $$ K = XW^K $$
   Where $W^K$ is the Key weight matrix. The Key vector encodes the content or features of the token, used to match against Queries.

- **Value (V):**
   $$ V = XW^V $$
   Where $W^V$ is the Value weight matrix. The Value vector contains the actual information to be aggregated and passed forward.

All three weight matrices ($W^Q$, $W^K$, $W^V$) are learned during model training. This process allows the model to flexibly compute attention based on the relationships between tokens in the sequence.

| Symbol | Name   | Description                                                                                 |
|--------|--------|---------------------------------------------------------------------------------------------|
| Q      | Query  | Represents the current token's request for information from other tokens in the sequence.    |
| K      | Key    | Represents the content or features of each token, used to match against the Query.           |
| V      | Value  | Contains the actual information or representation to be aggregated and passed forward.       |

# Attention Mechanism Steps

1. **Dot Product of Q and K**  
   For each token, compute the dot product between its Query (Q) vector and the Key (K) vectors of all other tokens in the sequence. This operation quantifies the similarity or relevance between tokens, helping the model determine which words are related or should influence each other.

2. **Scale by √dk**  
   Divide the dot product scores by the square root of the dimension of the Key vectors (√dk). This scaling step prevents the resulting values from becoming too large, which could push the softmax function into regions with extremely small gradients, making learning unstable or slow.

3. **Softmax**  
   Apply the softmax function to the scaled scores. This transforms the scores into a probability distribution, assigning higher weights to more relevant tokens and lower weights to less relevant ones. The sum of all attention weights for a given token is 1.

4. **Weighted Sum of V**  
   Multiply each Value (V) vector by its corresponding attention weight and sum the results. This produces a new representation for each token, where information from the most relevant tokens is emphasized. The output is a context-aware embedding that captures relationships across the sequence.