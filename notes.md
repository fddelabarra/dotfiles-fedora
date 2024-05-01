## Miniconda

Al instalarlo te pide correr el comando:
```
conda config --set auto_activate_base false
```

Si no toma el comando `conda` hacer:
```
cd miniconda3/bin/
./conda init {terminal_que_se_este_usando}
```

Iniciar nuevo ambiente:
```
conda create --name {nombre_ambiente} [package...]
```

Activar ambiente después:
```
conda activate {nombre_ambiente}
```

Para actualizar miniconda:
```
conda activate base
conda update --all
```
Recuerda salir de la base despues.
