Welcome to the first ever Bozeman useR markoff!

We have a very interesting study here of survival times after exposure to a
deadly biological agent for a few species of fish.  However, to complicate
matters, the survival times are censored.  For some of the fish, we only know
that they lived until at least a certain time.  We are interested in figuring
out the average survival time, and luckily, it's pretty easy to do this with
Bayesian statistics.  In particular we'll use Rstan to fit the model.

A short and incomplete report is provided in the R-markdown script
`lifetime.Rmd`.  As is, the R-markdown produces a simple pdf document, but you
may wish to produce a microsoft word document.  Or a fancy pdf document.  Or a
beamer presentation.  Or an html web-page.  Or an html presentation.  Or maybe
a shiny app!  Please use the given Rmd as a starting point to explore
R-markdown.

I realize that some people will not have enough experience, time, or initiative
to customize their own R-markdown script, and that's OK.  I'm hoping that we
get a handful of people to create R-markdown scripts before our next meetup.
In the first half of the next meetup, people can finalize scripts and maybe
form "teams" if they want.  In the second half, we'll have people show off what
they've created and give a few details on how they did it.  Hopefully we'll
also post the scripts to github for anyone to download.

If you are intimidated by Rstan and/or Bayes, don't be.  In fact, we'll use
this meetup to inspire our next meetup where we will learn a little about
Bayesian statistics and the stan sampler.

Finally, this study is totally made up and I didn't go super crazy in writing
the current R-markdown script so sorry if it's a little sparse.  Hopefully,
I've provided enough (fake) background for people to run with it though!

Note:  _markoff_ is a hilarious play on a markdown competition (like a
"bake-off") and also on _Markov_ which is one of the M's in MCMC-the sampling
method for Bayesian statistics.  All credit to Kenny and Brandon.

