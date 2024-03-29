---
layout: default
title: 🐍 Python
nav_order: 2
---

# Environment setup

1. Using **conda**

    1. Create conda environment

        1. Quick create env using `conda create`
       
            <pre id="codeSnippet">
            conda create -n env_rdm python=3.10 pip ipykernel notebook
            conda activate env_rdm
            </pre>

        1. Create env use `environment.yaml` file

           - First, create `environment.yaml ` file with example content following
           - Second, run command `conda env create -f environment.yaml`
           - Optional, remove environment if needed `conda env remove -n env_ascore`
             
            ```
            name: env_ascore
            channels:
              - conda-forge
              - defaults
            dependencies:
              - python=3.10
              - pandas
              - joblib
              - statsmodels
              - ipykernel
              - zipp  
              - pip
              - pip: 
                - optbinning==0.17.3
                - ortools==9.4.1874
            # set https_proxy=10.1.33.23:8080
            # set http_proxy=10.1.33.23:8080          
            ```

        1. Create env use `requirements.txt` file

          ```
          conda list --export > requirements.txt
          conda install --file requirements.txt
          ```

    1. Conda common commands

      -  Conda environment list
      
      ```python
      conda info --env
      ```
      
      - Remove conda environment
      
      ```python
      conda deactivate
      conda env remove -n python38
      ```
      
      - Activate conda environment
      
      ```python
      conda activate python38
      ```
      - Clean unused library
      
      ```
      conda clean --all
      pip cache remove *
      ```

2. Create environment for jupyter notebook

    1. Use conda to create new environment
    1. Use `ipython`
     
        ```python
        conda activate python38
        ipython kernel install --user --name=python38
        ```
 
    1. Remove jupyter notebook environment (require run as administrator)
  
        ```python
        jupyter kernelspec list
        jupyter kernelspec uninstall python38 
        ```

3. Install packages in **OFFLINE** mode with `pip`

      1. Install OFFLINE packages using requirements.txt 
      
         - Step 1: Input to `requirements.txt` file in current directory.  Eg. content `"jupyter-contrib-nbextensions==0.5.1"`

             ```
             # export env if available
            pip list --format=freeze > requirements.txt
            ```
        
          - Step 2: Create `wheel` folder (Eg. D:\wheel)
        
          - Step 3: Run following command to download dependencies packages to folder `wheel`
      
          ```python
          pip download -r requirements.txt -d wheel
          ```
      
          - Step 4: Run following command to install
            
          ```
          pip install -r requirements.txt --find-links=D:\wheel --no-index
          ```
      
      1. Install OFFLINE Linux package
      
          1. Case 1: Activate same version python (i.e 3.7.0) and run following command
             
               ```
               pip download --platform manylinux1_x86_64 --only-binary=:all: --no-binary=:none: pandas
               ```            
          2. Case 2: Specify python version
      
              ```
              pip download --platform manylinux1_x86_64 --only-binary=:all: --python-version=38 --no-binary=:none: pandas
              ```
  
   
      
4. Other ultility commands
      
      - Check dependencies
      
      ```
      python -m pip check 
      pip freeze > requirements.txt
      ```
      
      - Themes jupyter notebook
      
      ```
      jt -t onedork -fs 13 -altp -tfs 14 -nfs 14 -cellw 88% -T
      ```
      
      - Install Extension for jupyter notebook
      
      ```
      pip install jupyter_contrib_nbextensions
      pip install jupyter_nbextensions_configurator
      jupyter contrib nbextension install --user
      jupyter nbextensions_configurator enable --user
      ```
