# source
# https://stackoverflow.com/questions/2925606/how-to-create-a-cpu-spike-with-a-bash-command

#dd if=/dev/zero of=/dev/null

fulload() {
    dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null &
};

fulload;
read;
killall dd


