#!/bin/sh
export LD_LIBRARY_PATH=/opt/gcc-12.1.0/lib64
echo "Modo STATIC - 2 hilos - Función MONO (AOS)"
OMP_NUM_THREADS=2 OMP_SCHEDULE=static perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-aos in out mono
echo "Modo STATIC - 2 hilos - Función HISTO (AOS)"
OMP_NUM_THREADS=2 OMP_SCHEDULE=static perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-aos in out histo
echo "Modo STATIC - 2 hilos - Función GAUSS (AOS)"
OMP_NUM_THREADS=2 OMP_SCHEDULE=static perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-aos in out gauss
echo "Modo STATIC - 2 hilos - Función MONO (SOA)"
OMP_NUM_THREADS=2 OMP_SCHEDULE=static perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-soa in out mono 
echo "Modo STATIC - 2 hilos - Función HISTO (SOA)"
OMP_NUM_THREADS=2 OMP_SCHEDULE=static perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-soa in out histo
echo "Modo STATIC - 2 hilos - Función GAUSS (SOA)"
OMP_NUM_THREADS=2 OMP_SCHEDULE=static perf stat -a -e 'energy-cores, energy-gpu, energy-pkg, energy-ram' release/img-soa in out gauss
