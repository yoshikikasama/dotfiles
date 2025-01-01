export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/bzip2/include"
eval "$(pyenv init -)"


export PGDATA=/usr/local/var/postgres

echo 'export PATH="/usr/local/opt/openjdk@11/bin:$PATH"'
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"

echo "export SPARK_HOME=/usr/local/opt/apache-spark/libexec/"
echo "export PATH=${PATH}:${SPARK_HOME}/"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/poetry/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
