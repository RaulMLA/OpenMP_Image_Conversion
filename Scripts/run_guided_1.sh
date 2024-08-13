#!/bin/sh
export LD_LIBRARY_PATH=/opt/gcc-12.1.0/lib64
echo "Modo GUIDED - 1 hilo - Función MONO (AOS)"
OMP_NUM_THREADS=1 OMP_SCHEDULE=guided perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-aos in out mono
echo "Modo GUIDED - 1 hilo - Función HISTO (AOS)"
OMP_NUM_THREADS=1 OMP_SCHEDULE=guided perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-aos in out histo
echo "Modo GUIDED - 1 hilo - Función GAUSS (AOS)"
OMP_NUM_THREADS=1 OMP_SCHEDULE=guided perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-aos in out gauss
echo "Modo GUIDED - 1 hilo - Función MONO (SOA)"
OMP_NUM_THREADS=1 OMP_SCHEDULE=guided perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-soa in out mono
echo "Modo GUIDED - 1 hilo - Función HISTO (SOA)"
OMP_NUM_THREADS=1 OMP_SCHEDULE=guided perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-soa in out histo
echo "Modo GUIDED - 1 hilo - Función GAUSS (SOA)"
OMP_NUM_THREADS=1 OMP_SCHEDULE=guided perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-soa in out gauss
