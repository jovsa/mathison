#mathison

## Introduction
========================================================
Around the world, people are spending an increasing amount of time on their mobile devices for email, social networking, banking and a whole range of other activities. But typing on mobile devices is still a serious pain.

The goal of this project is to create an algorithm that predicts that next word from an input sequence. The intent is to explore the area of large scale statistical language modelling in machine learning.  

This presentation will showcase the work done in this project (titled 'Project Mathison'). 


## The Algorithm 
========================================================
<small>
One of the biggest problems when building a language prediction algorithm is creating a traning pipeline that scales and approaches the quality of Kneser-Ney Smoothing as the amount of training data increases. For this reason, ideas from work done by [Google Research](https://research.google.com/) on natural language processing were used to build and train models. More specifically, models were built using the 'Stupid Backoff' scheme [1]:

$${P(w_{i}|w_{i-k-1}^{i-1}) = }$$
$$\begin{Bmatrix}
(\rho(w_{i-k-1}^{i}))   
& \text{if } (w_{i-k-1}^{i}) \text{ is found}\\
\lambda(w_{i-k+1}^{i-1}) P(w_{i-k+2}^{i}) & 
\text{otherwise}
\end{Bmatrix}$$
where ρ(·) are pre-computed and stored probabilities, and λ(·) are back-off weights. As examples, Kneser-Ney Smoothing (Kneser and Ney, 1995), Katz Backoff (Katz, 1987) and linear interpolation (Jelinek and Mercer, 1980) can be expressed in this scheme (Chen and Goodman, 1998). The recursion ends at unigrams.
</small>
