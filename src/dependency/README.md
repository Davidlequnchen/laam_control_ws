# Establish PC - laser communications

## Labjack 

LabJack makes USB, Ethernet, and WiFi based measurement and automation
devices which provide analog and digital inputs and outputs.

__Reference__
- LabJack official github page: https://github.com/labjack
- Download the latest version of driver/software. (For U3, list of driver can be found): https://labjack.com/support/u3-software-options
- Specifically, download exodriver(Linux only, for C/C++): https://labjack.com/support/software/installers/exodriver
- For python interface (cross-platform) -- LabJackPython: https://labjack.com/support/software/examples/ud/labjackpython


#### Installation instructions
- Complie and install exodriver first (go to downloaded folder): 
  ```
  cd exodriver
  sudo ./install.sh
  ```
  - try the U3 examples
    ``` 
    cd examples/U3
    make
    ```
  - connect PC to the LabJack U3-HV, then run one of the examples:
    ```
    ./u3BasicConfigU3
    ```
    Expected output:
    ```text
    Results of ConfigU3:
    FirmwareVersion = 1.46
    BootloaderVersion = 0.27
    HardwareVersion = 1.30
    SerialNumber = 320102497
    ...
    TimerClockConfig = 2
    TimerClockDivisor = 0
    CompatibilityOptions = 0
    VersionInfo = 18
    DeviceName = U3-HV
    ```
  - Read the analog input voltage signal:
    ```
    ./u3Stream
    ```
    Expected output:
    ```text
    Number of scans: 2400
    Total packets read: 480
    Current PacketCounter: 223
    Current BackLog: 0
    AI0: 1.3960 V
    AI1: 1.3963 V
    AI2: 1.3983 V
    AI3: 1.4021 V
    AI4: 0.2823 
    ```

- Complie LabJackPython, __for python3__, please use the following
  ```
  sudo python3 setup.py install
  ```
  alternatively use pip3 to install directly with binary version
  ```
  pip3 install LabJackPython
  ```
  - Quick use of LabJackPython interface:
    For U3:
    ```
    >>> import u3
    >>> d = u3.U3()
    >>> d.configU3()
    {'BootloaderVersion': '0.27',
    'CIODirection': 0,
    ...,
    }
    >>> d.close()
    ```

