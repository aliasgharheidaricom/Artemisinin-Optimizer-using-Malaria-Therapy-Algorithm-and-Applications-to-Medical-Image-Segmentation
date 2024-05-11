# Artemisinin Optimization based on Malaria Therapy: Algorithm and Applications to Medical Image Segmentation

![GitHub](https://img.shields.io/github/license/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub repo size](https://img.shields.io/github/repo-size/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub language count](https://img.shields.io/github/languages/count/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub last commit](https://img.shields.io/github/last-commit/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub issues](https://img.shields.io/github/issues/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub forks](https://img.shields.io/github/forks/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub stars](https://img.shields.io/github/stars/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub watchers](https://img.shields.io/github/watchers/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)
![GitHub contributors](https://img.shields.io/github/contributors/aliasgharheidaricom/Artemisinin-optimization-based-on-malaria-therapy)

Version 1.0, uploaded on 5 11 2024, has been developed based on the Artemisinin Optimization (AO) algorithm introduced in the paper "Artemisinin Optimization based on Malaria Therapy: Algorithm and Applications to Medical Image Segmentation" authored by Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Zongda Wu, and Huiling Chen.

## Introduction

Welcome to the Artemisinin Optimization repository! The Artemisinin Optimization (AO) algorithm is an efficient metaheuristic algorithm inspired by the process of artemisinin medicine therapy for malaria. This repository contains the source code for the AO algorithm, along with comprehensive documentation to aid in understanding and utilizing this powerful optimization tool.

<div align="center">
  <!-- Add images related to Artemisinin if available -->
</div>

## Overview

This repository houses the implementation of the AO algorithm, which consists of three optimization stages: comprehensive eliminations, local clearance, and post-consolidation. The algorithm is designed to simulate the process of artemisinin therapy for malaria, with a focus on global exploration, local exploitation, and the ability to escape local optima.

### Algorithm Pseudo-code

```plaintext
/* Starting phase */
Parameters initializing: Fitness evaluation 𝑓, Max fitness evaluation 𝑀𝑎𝑥𝐹, Population size 𝑁,
Dimension 𝐷.
Randomly initialize the agent population 𝐴𝑁,𝐷 and evaluate their fitness 𝑓𝑖𝑡𝑖
,
Find the current optimal 𝐴𝑏𝑒𝑠𝑡.
𝑓 = 𝑓 + 𝑁.
/* Main loop*/
While 𝑓 < 𝑀𝑎𝑥𝐹
Calculate the probability 𝐾, exponent 𝑐.
For each agent 𝑖 = 1 ∶ 𝑁
 For each dimension 𝑗 = 1 ∶ 𝐷
 /* Comprehensive elimination phase */
 If rand<𝐾
 Update search agent 𝑎𝑖,𝑗 using Eq. (7).
 End If
 /* Local clearance phase */
 Update search agent 𝑎𝑖,𝑗 using Eq. (8)
 /* Post-consolidation phase */
 Search agent information crossover by Eq. (11)
 End For
End For
Calculate the fitness 𝑓𝑖𝑡.
Update the population and find the optimal.
𝑓 = 𝑓 + 𝑁
End While
Return the optimal solution
```

### Usage Example:

```python
# Example usage of the AO algorithm
from AO import ArtemisininOptimization

# Set parameters
N = 100  # Number of individuals in the population
Max_iter = 1000  # Maximum number of iterations
lb = -5  # Lower bound for optimization variables
ub = 5  # Upper bound for optimization variables
dim = 10  # Dimensionality of the problem

# Define objective function to be minimized
def fobj(x):
    # Example objective function
    return sum(x**2)

# Run AO algorithm
optimizer = ArtemisininOptimization(N, Max_iter, lb, ub, dim, fobj)
best_solution = optimizer.optimize()

print("Best solution:", best_solution)
```

**Note:** Replace the objective function `fobj` with your specific objective function.

### Key Features

- Efficient metaheuristic algorithm inspired by artemisinin therapy for malaria.
- Three optimization stages: comprehensive eliminations, local clearance, and post-consolidation.
- Designed for global exploration and the ability to escape local optima.

## Applications

Explore the applications of the Artemisinin Optimization algorithm in medical image segmentation:

- [Multi-Threshold Image Segmentation (MTIS)](applications.md#multi-threshold-image-segmentation-mtis)
  - Learn about our approach combining AO algorithm for enhanced segmentation of medical images.

For detailed experiments, evaluation metrics, and results, refer to the [Applications.md](applications.md) file.

![Flowchart of MTIS Method](The%20flowchart%20of%20MTIS%20method.png)

## Contributing

We welcome contributions from the community! If you'd like to contribute to the Artemisinin Optimization project, please contact us. If you have any questions, suggestions, or feedback, feel free to reach out to the authors:

- **Dong Zhao**
  - Email: [zd-hy@163.com](mailto:zd-hy@163.com)

- **Huiling Chen**
  - Email: [chenhuiling.jlu@gmail.com](mailto:chenhuiling.jlu@gmail.com)

## Acknowledgments

We extend our gratitude to all contributors and organizations that supported the development of the Artemisinin Optimization algorithm.

## License

The Artemisinin Optimization algorithm is licensed under the [MIT License](LICENSE). Please review the license for details on how you can use and distribute this software.

## Contact Information

If you have any questions, feedback, or collaboration inquiries, feel free to reach out to us:

- **Dong Zhao**
  - Email: [zd-hy@163.com](mailto:zd-hy@163.com)

- **Huiling Chen**
  - Email: [chenhuiling.jlu@gmail.com](mailto:chenhuiling.jlu@gmail.com)

## Citation

If you use the Artemisinin Optimization algorithm in your academic research, please cite our paper:

[Include citation information here]

## Supplementary Files and Code

For additional resources, supplementary files, and open-source code, visit [aliasgharheidari.com/AO.html](https://aliasgharheidari.com/AO.html).

## MATLAB File Exchange

Find the Artemisinin Optimization algorithm on MathWorks File Exchange: [Artemisinin Optimization - Algorithm and Application to Medical Image Segmentation](https://ch.mathworks.com/matlabcentral/fileexchange/...)

## Flowchart

![Flowchart of Artemisinin Optimization (AO)](Flowchart%20of%20Artemisinin%20Optimization%20(AO).png)

Feel free to explore the code, contribute to the project, and leverage the Artemisinin Optimization algorithm for your optimization needs. Thank you for your interest!
```
