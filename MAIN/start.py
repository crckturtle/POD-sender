import subprocess, time, sys

print("!! This is script is only needed if your system is other than windows or if a user interface is not installed on your system")
time.sleep(3)
print("!! If your device does not fit the forementioned parameters, you are able to run the script directly from (ddos.bat)")
time.sleep(3)

init = input("Would you like to continue? (y/n): ")

if init == "y":
    (subprocess.call([r'ddos.bat']))
else:
    sys.exit