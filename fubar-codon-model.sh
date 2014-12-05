#!/bin/bash

(echo "1"; echo "1"; echo "/data/veg/FUBAR3D/condLiks/lysin.fasta"; echo "/data/veg/FUBAR3D/condLiks/lysin.tre"; echo "11") | HYPHYMP /data/veg/FUBAR3D/condLiks/FUBAR.bf

julia /data/veg/FUBAR3D/FUBAR3D_2/FUBAR3D.main.jl /data/veg/FUBAR3D/condLiks/lysin.grid_info /data/veg/FUBAR3D/FUBAR3D_2/datasets/distance.matrix.thresh65.csv

Rscript logfile-plots.r /data/veg/FUBAR3D/FUBAR3D_2/log/

exit
