FROM haskell:7.8
MAINTAINER Spike Curtis <spike@rigetti.com>
RUN cabal update && cabal install QuickCheck random mtl primes Lattices zlib easyrender fixedprec newsynth containers set-monad

RUN apt-get update && apt-get install make

WORKDIR /
ADD http://www.mathstat.dal.ca/~selinger/quipper/downloads/quipper-0.7.tgz /
RUN tar xf quipper-0.7.tgz
RUN mv quipper-0.7 quipper

WORKDIR /quipper
RUN make
ENV PATH /quipper/quipper/scripts:$PATH
CMD ['quipper']