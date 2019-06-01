# Update-VPNConnectionsList
Update-VPNConnectionsList will backup your existing VPN Connections and replace them with the VPN Connections stored within the specified PBK file.
## Usage
### Parameters
#### PbkPath
Specifies the path of a PBK file to import.

This parameter has a default value of `\\brick2\files\Data\ServiceDesk\VPN` as this is where our default PBK is stored.  By providing the parameter at runtime you can override this default location.

Argument | Value
--- | ---
Type | String
Position | Named
Default value | None
Accept pipeline input | False
Accept wildcard characters | False
Mandatory | False
### Syntax
```powershell
& Update-VPNConnectionsList.ps1
```
```powershell
& Update-VPNConnectionsList.ps1 -PbkPath C:\Path\To\PBK
```
### Example
```
C:\>& Update-VPNConnectionsList.ps1
```
```
C:\>& Update-VPNConnectionsList.ps1 -PbkPath C:\Path\To\PBK
```