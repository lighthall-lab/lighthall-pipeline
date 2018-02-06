# lighthall-pipeline
A working pipeline for parallel processing of neuroimaging data on SLURM-based compute cluster, for https://github.com/lighthall-lab/.
Cloned from https://github.com/lucychenrobotics/Nipype-Pipeline-AD-D after her work on the pre-processing steps.

@ian-cogneato:
> Removed a mess of old crash files in the latest branch, but we still have some cleanup work to do in sorting out which pre-processing steps belong in the current workflow.

@lucychenrobotics:
> Stokes is now ready! (other than the matlab stuff) 
> So we were having an issue with sqlite, it took him a bit but he managed to fix it. The current instructions to run anything using stokes is:

> Use the script called `bruh.slurm` (or write your own, but don't put `account = qchen2` at the top, or `account = anything` at the top like in the examples) `Bruh.slurm` loads all the modules and everything right now. The python module is now called `python/python-current`. If you want to add more modules in python, do `pip install` after loading the module (however when i did this i didn't have the permission to, so Jamie did it for me. Have him change this if necessary). 

> To load what script you want to run, copy it over using scp:
> 
> `scp locationtobruhslurm stokes:bruh` (or whatever you want to name the variable)
> 
> also do this for the python script you run within `bruh`
>
> after loading the file into stokes, go into the stokes ssh and type `sbatch bruh` (submits the job `bruh`) to see if its running or completed or failed do `scontrol show job job#here`. To read the error files do `ls` to see what the error file is named, then `cat errorfilenamehere`.

> EXAMPLE: 
> ~~~
scp /Users/lighthalllab/bruh.slurm stokes:bruh
>
> `scp /Users/lighthalllab/helloscript.py stokes:helloscript`
>
> `ssh stokes`
>
> `sbatch bruh`
>
> `scontrol show job 626612`
>
> `cat myerror626612.txt`
~~~
 
> I haven't been able to run it on the bet yet but it imported nipype's bet interface fine so should be okay! I forgot how I loaded the data with the file structure still intact and everything, but i'll send it later 
> 


