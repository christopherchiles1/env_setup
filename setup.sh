# Create .bash_profile if it doesn't exist
if [ ! -e ~/.bash_profile ]
then
  touch ~/.bash_profile
fi

# Create .bashrc if it doesn't exist
if [ ! -e ~/.bashrc ]
then
  touch ~/.bashrc
fi

# Source .bashrc from .bash_profile if it hasn't been done
if ! grep -q 'source ~/.bashrc' ~/.bash_profile
then
  echo 'source ~/.bashrc' >> ~/.bash_profile
fi

# Source all the stuff in env_setup from .bashrc if it hasn't been done
if ! grep -q 'source ~/env_setup/.all.bash' ~/.bashrc
then
  echo 'source ~/env_setup/.all.bash' >> ~/.bashrc
fi

echo 'Setup Complete!'
