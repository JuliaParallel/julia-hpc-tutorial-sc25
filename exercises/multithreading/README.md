## Requirements

To create the Jupyter multi-threaded kernel (only needed if you're running this not on NERSC or GCP):

```
julia --project=. -e 'using Pkg; Pkg.instantiate(); using IJulia; IJulia.installkernel("Multithreaded Julia", "--project=@.", "--threads=auto")'
```
