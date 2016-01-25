Project Mathison: Johns Hopkins Data Science Capstone Presentation
========================================================
Author: Jovan Sardinha 
Date: January 16, 2016



Introduction
========================================================
Around the world, people are spending an increasing amount of time on their mobile devices for email, social networking, banking and a whole range of other activities. But typing on mobile devices is still a serious pain.

The goal of this project is to create an algorithm that predicts that next word from an input sequence. The intent is to explore the area of large scale statistical language modelling in machine learning.  

This presentation will showcase the work done in this project (titled 'Project Mathison'). 


The Algorithm 
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

About the Application
========================================================
<small>**How to use**: The application can be accessed here: [Link to app](https://jovan-sardinha.shinyapps.io/Project-Mathison/). To use the app, one has to follow three simple instructions, illustrated below: </small>
<div align = "center">
<img src="instructions.jpg" height="45%" width="45%"></img>
</div>
<small>**How it works**: When you complete step 2, an R scipt executes on the server side by taking the input provided and creating a table with the top 5 token scores. The token with the highest score is predicted as the next word. </small>

Bibliography
========================================================
[1] Brants,popat,xp,och,jeff. "Large Language Models in Machine Translation." Large Language Models in Machine Translation. Web. 20 Dec. 2015.

[2] Paul, Douglas B. "Experience with a Stack Decoder-based HMM CSR and Back-OFF N-gram Language Models." Proceedings of the Workshop on Speech and Natural Language - HLT '91 (1991). Web.




