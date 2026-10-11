## Fraud Detection using Hidden Markov Models (Bachelor's Thesis)

This project was developed using **R** and **Python** to build an anomaly detection system for financial transactions, utilizing Hidden Markov Models and K-Means clustering to identify latent spending patterns and detect fraudulent activity.

**Key Features:**
- **Data Simulation:** Generated synthetic transactional data using **Python (NumPy)** to model realistic financial behavior across different spending categories.
- **Clustering & Discretization:** Applied **Two-Step Clustering** to determine the optimal number of states and used **K-Means** to discretize transaction values into distinct segments.
- **Predictive Modeling:** Trained and compared **Gaussian** and **Multinomial Hidden Markov Models (HMM)** using the `depmixS4` package in **R** to learn legitimate user profiles.
- **Algorithmic Implementation:** Utilized the **Expectation-Maximization (Baum-Welch)** and **Forward-Backward** algorithms to estimate model parameters based on transaction sequences.
- **Performance Evaluation:** Validated anomaly detection capabilities using the Sliding Window method, **Confusion Matrices**, **ROC curves**, and the **AUROC** indicator, achieving an optimal AUROC of 0.9165.
