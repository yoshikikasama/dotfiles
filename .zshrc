export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv >/dev/null 2>&1; then
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

export PGDATA=/usr/local/var/postgres

export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"

export SPARK_HOME="/usr/local/opt/apache-spark/libexec/"
export PATH="${PATH}:${SPARK_HOME}/"

export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/poetry/bin:$PATH"

if command -v atuin &> /dev/null; then
    eval "$(atuin init zsh)"
fi
