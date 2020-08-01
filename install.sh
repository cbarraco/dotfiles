#!/bin/bash
(cd configs && stow --verbose=2 --override=".*" -t $HOME *)
