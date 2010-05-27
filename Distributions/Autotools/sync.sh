#!/bin/bash

rsync -av ../../Frameworks/ Frameworks/
pushd .
cd Frameworks/OpenVanilla
    ln -sf ./Headers/ ./OpenVanilla
popd
rsync -av ../../Modules/ Modules/ 
