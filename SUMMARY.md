# Summary
1. [Introduction](intro/README.md)
 1 UEFI Driver Model Extensions
 2 Overview
 3 Goals
 4 Target Audience
 5 UEFI Design Overview
 6 UEFI Driver Model
 6.1 UEFI Driver Model Goals
 6.2 Legacy Option ROM Issues
 7 Migration Requirements
 7.1 Legacy Operating System Support
 7.2 Supporting the UEFI Specification on a Legacy Platform
 8 Conventions Used in this Document
 8.1 Data Structure Descriptions
 8.2 Protocol Descriptions
 8.3 Procedure Descriptions
 8.4 Instruction Descriptions
 8.5 Pseudo-Code Conventions
 8.6 Typographic Conventions
 8.7 Number formats
 8.8 Binary prefixes
2. [Overview](overview/README.md)
 1 Boot Manager
 1.1 UEFI Images
 1.2 UEFI Applications
 1.3 UEFI OS Loaders
 1.4 UEFI Drivers
 2 Firmware Core
 2.1 UEFI Services
 2.2 Runtime Services
 3 Calling Conventions
 3.1 Data Types
 3.2 IA-32 Platforms
 3.3 Intel ® Itanium ® -Based Platforms
 3.4 x64 Platforms
 3.5 AArch32 Platforms
 3.6 AArch64 Platforms
 4 Protocols
 5 UEFI Driver Model
 5.1 Legacy Option ROM Issues
 5.2 Driver Initialization
 5.3 Host Bus Controllers
 5.4 Device Drivers
 5.5 Bus Drivers
 5.6 Platform Components
 5.7 Hot-Plug Events
 5.8 EFI Services Binding
 6 Requirements
 6.1 Required Elements
 6.2 Platform-Specific Elements
 6.3 Driver-Specific Elements
 6.4 Extensions to this Specification published elsewhere
3. [Boot Manager](bootmanager/README.md)
 1 Firmware Boot Manager
 1.1 Boot Manager Programming
 1.2 Load Option Processing
 1.3 Load Options
 1.4 Boot Manager Capabilities
 1.5 Launching Boot#### Applications
 1.6 Launching Boot#### Load Options Using Hot Keys
 1.7 Required System Preparation Applications
 2 Boot Manager Policy Protocol
 3 Globally Defined Variables
 4 Boot Option Recovery
 4.1 OS-Defined Boot Option Recovery
 4.2 Platform-Defined Boot Option Recovery
 4.3 Boot Option Variables Default Boot Behavior
 5 Boot Mechanisms
 5.1 Boot via the Simple File Protocol
 5.2 Boot via the Load File Protocol
4. [EFI System Table](systab/README.md)
 4.1 UEFI Image Entry Point
 4.2 EFI Table Header
 4.3 EFI System Table
 4.4 EFI Boot Services Table
 4.5 EFI Runtime Services Table
 4.6 EFI Configuration Table & Properties Table
 4.7 Image Entry Point Examples
 4.7.1 Image Entry Point Examples
 4.7.2 UEFI Driver Model Example
 4.7.3 UEFI Driver Model Example (Unloadable)
 4.7.4 EFI Driver Model Example (Multiple Instances)
5. [GUID Partition Table (GPT) Disk Layout](gpt/README.md)
 1 GPT and MBR disk layout comparison
 2 LBA 0 Format
 2.1 Legacy Master Boot Record (MBR)
 2.2 OS Types
 2.3 Protective MBR
 3 GUID Partition Table (GPT) Disk Layout
 3.1 GPT overview
 3.2 GPT Header
 3.3 GPT Partition Entry Array
6. [Services - Boot Services](services/boot/README.md)
 1 Event, Timer, and Task Priority Services
 2 Memory Allocation Services
 3 Protocol Handler Services
 4 Image Services
 5 Miscellaneous Boot Services
7. [Services - Runtime Services](rservices/runtime/README.md)
 1 Runtime Services Rules and Restrictions
 1.1 Exception for Machine Check, INIT, and NMI
 2 Variable Services
 2.1 Using the EFI_VARIABLE_AUTHENTICATION_2 descriptor (Recommended) 
 2.2 Using the EFI_VARIABLE_AUTHENTICATION descriptor
 2.3 Hardware Error Record Persistence
 3 Time Services
 4 Virtual Memory Services
 5 Miscellaneous Runtime Services
 5.1 Reset System
 5.2 Get Next High Monotonic Count
 5.3 Update Capsule
 5.4 Exchanging information between the OS and Firmware
 5.5 Delivery of Capsules via file on Mass Storage device
 5.6 UEFI variable reporting on the Success or any Errors encountered in processing of capsules after restart
8. [Protocols - EFI Loaded Image](protocols/loadedimage/README.md)
 1 EFI Loaded Image Protocol
 2 EFI Loaded Image Device Path Protocol
9. [Protocols - Device Path Protocol](protocols/devicepath/README.md)
 1 Device Path Overview
 2 EFI Device Path Protocol
 3 Device Path Nodes
 3.1 Generic Device Path Structures
 3.2 Hardware Device Path
 3.3 ACPI Device Path
 3.4 ACPI _ADR Device Path
 3.5 Messaging Device Path
 3.6 Media Device Path
 3.7 BIOS Boot Specification Device Path
 4 Device Path Generation Rules
 4.1 Housekeeping Rules
 4.2 Rules with ACPI _HID and _UID
 4.3 Rules with ACPI _ADR
 4.4 Hardware vs. Messaging Device Path Rules
 4.5 Media Device Path Rules
 4.6 Other Rules
 5 Device Path Utilities Protocol
 6 EFI Device Path Display Format Overview
 6.1 Design Discussion
 6.2 Device Path to Text Protocol
 6.3 Device Path from Text Protocol
10. [Protocols - UEFI Driver Model](protocols/drivermodel/README.md)
 1 EFI Driver Binding Protocol
 2 EFI Platform Driver Override Protocol
 3 EFI Bus Specific Driver Override Protocol
 4 EFI Driver Diagnostics Protocol
 5 EFI Component Name Protocol
 6 EFI Service Binding Protocol
 7 EFI Platform to Driver Configuration Protocol
 7.1 DMTF SM CLP ParameterTypeGuid
 8 EFI Driver Supported EFI Version Protocol
 9 EFI Driver Family Override Protocol
 9.1 Overview
 10 EFI Driver Health Protocol
 10.1 UEFI Boot Manager Algorithms
 10.2 UEFI Driver Algorithms
 11 EFI Adapter Information Protocol
 12 EFI Adapter Information Protocol Information Types
 12.1 Network Media State
 12.2 Network Boot
 12.3 SAN MAC Address
 12.4 IPV6 Support from UNDI
11. [Protocols - Console Support](protocols/conio/README.md)
 1 Console I/O Protocol
 1.2 ConsoleIn Definition
 2 Simple Text Input Ex Protocol
 3 Simple Text Input Protocol
 3.1 ConsoleOut or StandardError
 4 Simple Text Output Protocol
 5 Simple Pointer Protocol
 6 EFI Simple Pointer Device Paths
 7 Absolute Pointer Protocol
 8 Serial I/O Protocol
 9 Graphics Output Protocol
 9.1 Blt Buffer
 10 Rules for PCI/AGP Devices
12. [Protocols - Media Access](protocols/media/README.md)
 1 Load File Protocol
 2 Load File 2 Protocol
 3 File System Format
 3.1 System Partition
 3.2 Partition Discovery
 3.3 Number and Location of System Partitions
 3.4 Media Formats
 4 Simple File System Protocol
 5 File Protocol
 6 Tape Boot Support
 6.1 Tape I/O Support
 6.2 Tape I/O Protocol
 6.3 Tape Header Format
 7 Disk I/O Protocol
 8 Disk I/O 2 Protocol
 9 Block I/O Protocol
 10 Block I/O 2 Protocol
 11 Inline Cryptographic Interface Protocol
 12 Erase Block Protocol
 13 ATA Pass Thru Protocol
 14 Storage Security Command Protocol
 15 NVM Express Pass Through Protocol
 16 SD MMC Pass Thru Protocol
 17 RAM Disk Protocol
13. [Protocols - PCI Bus Support](protocols/pcibus/README.md)
 1 PCI Root Bridge I/O Support
 1.1 PCI Root Bridge I/O Overview
 2 PCI Root Bridge I/O Protocol
 2.1 PCI Root Bridge Device Paths
 3 PCI Driver Model
 3.1 PCI Driver Initialization
 3.2 PCI Bus Drivers
 3.3 PCI Device Drivers
 4 EFI PCI I/O Protocol
 4.1 PCI Device Paths
 4.2 PCI Option ROMs
 4.3 Nonvolatile Storage
 4.4 PCI Hot-Plug Events
14. [Protocols - SCSI Driver Models and Bus Support](protocols/scsi/README.md)
 1 SCSI Driver Model Overview
 2 SCSI Bus Drivers
 2.1 Driver Binding Protocol for SCSI Bus Drivers
 2.2 SCSI Enumeration
 3 SCSI Device Drivers
 3.1 Driver Binding Protocol for SCSI Device Drivers
 4 EFI SCSI I/O Protocol
 5 SCSI Device Paths
 5.1 SCSI Device Path Example
 5.2 ATAPI Device Path Example
 5.3 Fibre Channel Device Path Example
 5.4 InfiniBand Device Path Example
 6 SCSI Pass Thru Device Paths
 7 Extended SCSI Pass Thru Protocol
15. [Protocols - iSCSI Boot](protocols/iscsiboot/README.md)
 1 Overview
 1.1 iSCSI UEFI Driver Layering
 2 EFI iSCSI Initiator Name Protocol
16. [Protocols - USB Support](protocols/usb/README.md)
 1 USB2 Host Controller Protocol
 1.1 USB Host Controller Protocol Overview
 2 USB Driver Model
 2.1 Scope
 2.2 USB Bus Driver
 2.3 USB Device Driver
 2.4 USB I/O Protocol
 3 USB Function Protocol
17. [Protocols - Debugger Support](protocols/debugger/README.md)
 1 Overview
 2 EFI Debug Support Protocol
 2.1 EFI Debug Support Protocol Overview
 3.1 EFI Debugport Overview
 3.2 Debugport Device Path
 3.3 EFI Debugport Variable
 4 EFI Debug Support Table
 4.1 Overview
 4.2 EFI System Table Location
 4.3 EFI Image Info
18. [Protocols - Compression Algorithm Specification](protocols/compression/README.md)
 1 Algorithm Overview
 2 Data Format
 2.1 Bit Order
 2.2 Overall Structure
 2.3 Block Structure
 3 Compressor Design
 3.1 Overall Process
 3.2 String Info Log
 3.3 Huffman Code Generation
 4 Decompressor Design
 5 Decompress Protocol
19. [Protocols - ACPI Protocols](protocols/ACPI/README.md)
20. [Protocols - String Services](protocols/string/README.md)
 20.1 Unicode Collation Protocol
 20.2 Regular Expression Protocol
 20.2.1 EFI Regular Expression Syntax Type Definitions
21. [EFI Byte Code Virtual Machine](protocols/EBC/README.md)
 1 Overview
 1.1 Processor Architecture Independence
 1.2 OS Independent
 1.3 EFI Compliant
 1.4 Coexistence of Legacy Option ROMs
 1.5 Relocatable Image
 1.6 Size Restrictions Based on Memory Available
 2 Memory Ordering
 3 Virtual Machine Registers
 4 Natural Indexing
 4.1 Sign Bit
 4.2 Bits Assigned to Natural Units
 4.3 Constant
 4.4 Natural Units
 5 EBC Instruction Operands
 5.1 Direct Operands
 5.2 Indirect Operands
 5.3 Indirect with Index Operands
 5.4 Immediate Operands
 6 EBC Instruction Syntax
 7 Instruction Encoding
 7.1 Instruction Opcode Byte Encoding
 7.2 Instruction Operands Byte Encoding
 7.3 Index/Immediate Data Encoding
 8 EBC Instruction Set
 9 Runtime and Software Conventions
 9.1 Calling Outside VM
 9.2 Calling Inside VM
 9.3 Parameter Passing
 9.4 Return Values
 9.5 Binary Format
 10 Architectural Requirements
 10.1 EBC Image Requirements
 10.2 EBC Execution Interfacing Requirements
 10.3 Interfacing Function Parameters Requirements
 10.4 Function Return Requirements
 10.5 Function Return Values Requirements
 11 EBC Interpreter Protocol
 12 EBC Tools
 12.1 EBC C Compiler
 12.2 C Coding Convention
 12.3 EBC Interface Assembly Instructions
 12.4 Stack Maintenance and Argument Passing
 12.5 Native to EBC Arguments Calling Convention
 12.6 EBC to Native Arguments Calling Convention
 12.7 EBC to EBC Arguments Calling Convention
 12.8 Function Returns
 12.9 Function Return Values
 12.10 Thunking
 12.11 EBC Linker
 12.12 Image Loader
 12.13 Debug Support
 13 VM Exception Handling
 13.1 Divide By 0 Exception
 13.2 Debug Break Exception
 13.3 Invalid Opcode Exception
 13.4 Stack Fault Exception
 13.5 Alignment Exception
 13.6 Instruction Encoding Exception
 13.7 Bad Break Exception
 13.8 Undefined Exception
 14.1 EFI Drivers for PCI Add-in Cards
 14.2 Non-PCI Bus Support
22. [Protocols - Firmware Update and Reporting](protocols/fwupdate/README.md)
 1 Firmware Management Protocol
 2 Delivering Capsules Containing Updates to Firmware Management Protocol
 2.1 EFI_FIRMWARE_MANAGEMENT_CAPSULE_ID_GUID
 2.2 DEFINED FIRMWARE MANAGEMENT PROTOCOL DATA CAPSULE STRUCTURE
 2.3 Firmware Processing of the Capsule Identified by EFI_FIRMWARE_MANAGEMENT_CAPSULE_ID_GUID
 3 EFI System Resource Table
 3.1 Adding and Removing Devices from the ESRT
 3.2 ESRT and Firmware Management Protocol
 3.3 Mapping Firmware Management Protocol Descriptors to ESRT Entries
23. [Network Protocols - SNP, PXE, BIS and HTTP Boot](protocols/net/README.md)
 23.1 Simple Network Protocol
 23.2 Network Interface Identifier Protocol
 23.3 PXE Base Code Protocol
 23.3.1 Netboot6
 23.4 PXE Base Code Callback Protocol
 23.5 Boot Integrity Services Protocol
 23.6 DHCP options for ISCSI on IPV6
 23.7 HTTP Boot
 23.7.1 Boot from URL
 23.7.2 Concept configuration for a typical HTTP Boot scenario
 23.7.3 Protocol Layout for UEFI HTTP Boot Client concept configuration for a typical
 HTTP Boot scenario
 23.7.4 Concept of Message Exchange in a typical HTTP Boot scenario (IPv4 in
 Corporate Environment)
 23.7.5 Concept of Message Exchange in HTTP Boot scenario (IPv6)
24. [Network Protocols - Managed Network](protocols/mnp/README.md)
 1 EFI Managed Network Protocol
25. [Network Protocols - VLAN, EAP, Wi-Fi and Supplicant](protocols/wifi/README.md)
 1 VLAN Configuration Protocol
 2 EAP Protocol
 2.1 EAPManagement Protocol
 2.2 EFI EAP Management2 Protocol
 2.3 EFI EAP Configuration Protocol
 3 EFI Wireless MAC Connection Protocol
 4 EFI Wireless MAC Connection II Protocol
 5 EFI Supplicant Protocol
 5.1 Supplicant Service Binding Protocol
 5.2 Supplicant Protocol
26. [Network Protocols - Bluetooth](protocols/bt/README.md)
 1 EFI Bluetooth Host Controller Protocol
 2 EFI Bluetooth Bus Protocol
 3 EFI Bluetooth Configuration Protocol
27. [Network Protocols - TCP, IP, IPsec, FTP, TLS and Configurations](protocols/tcpip/README.md)
 1 EFI TCPv4 Protocol
 1.1 TCP4 Service Binding Protocol
 1.2 TCP4 Protocol
 2 EFI TCPv6 Protocol
 2.1 TCPv6 Service Binding Protocol
 2.2 TCPv6 Protocol
 3 EFI IPv4 Protocol
 3.1 IP4 Service Binding Protocol
 3.2 IP4 Protocol
 4 EFI IPv4 Configuration Protocol
 5 EFI IPv4 Configuration II Protocol
 6 EFI IPv6 Protocol
 6.1 IPv6 Service Binding Protocol
 6.2 IPv6 Protocol
 7 EFI IPv6 Configuration Protocol
 8 IPsec
 8.1 IPsec Overview
 8.2 EFI IPsec Configuration Protocol
 8.3 EFI IPsec Protocol
 8.4 EFI IPsec2 Protocol
 9 Network Protocol - EFI FTP Protocol
 10 EFI TLS Protocols
 10.1 EFI TLS Service Binding Protocol
 10.2 EFI TLS Protocol
 10.3 EFI TLS Configuration Protocol
28. [Network Protocols - ARP, DHCP, DNS, HTTP and REST](protocols/addhr/README.md)
 1 ARP Protocol
 2 EFI DHCPv4 Protocol
 3 EFI DHCP6 Protocol
 3.1 DHCP6 Service Binding Protocol
 3.2 DHCP6 Protocol
 4 EFI DNSv4 Protocol
 5 EFI DNSv6 Protocol
 5.2 DNS6 Protocol
 6 EFI HTTP Protocols
 6.1 HTTP Service Binding Protocol
 6.2 EFI HTTP Protocol Specific Definitions
 6.3 HTTP Utilities Protocol
 7 EFI REST Protocol
 7.1 EFI REST Protocol Definitions
29. [Network Protocols - UDP and MTFTP](protocols/udp/README.md)
 1 EFI UDP Protocol
 1.1 UDP4 Service Binding Protocol
 1.2 UDP4 Protocol
 2 EFI UDPv6 Protocol
 2.1 UDP6 Service Binding Protocol
 2.2 EFI UDP6 Protocol
 3 EFI MTFTPv4 Protocol
 4 EFI MTFTPv6 Protocol
 4.1 MTFTP6 Service Binding Protocol
 4.2 MTFTP6 Protocol
30. [Secure Boot and Driver Signing](secureboot/README.md)
 1 Secure Boot
 2 UEFI Driver Signing Overview
 2.1 Digital Signatures
 2.2 Embedded Signatures
 2.3 Creating Image Digests from Images
 2.4 Code Definitions
 3 Firmware/OS Key Exchange: creating trust relationships
 3.1 Enrolling The Platform Key
 3.2 Clearing The Platform Key
 3.3 Transitioning to Audit Mode
 3.4 Transitioning to Deployed Mode
 3.5 Enrolling Key Exchange Keys
 3.6 Platform Firmware Key Storage Requirements
 4 Firmware/OS Key Exchange: passing public keys
 4.1 Signature Database
 4.2 Image Execution Information Table
 5 UEFI Image Validation
 5.1 Overview
 5.2 Authorized User
 5.3 Signature Database Update
 6 Code Definitions
 6.1 UEFI Image Variable GUID & Variable Name
31. [Human Interface Infrastructure Overview](hii/README.md)
 1 Goals
 2 Design Discussion
 2.1 Drivers And Applications
 2.2 Localization
 2.3 User Input
 2.4 Keyboard Layout
 2.5 Forms
 2.6 Strings
 2.7 Fonts
 2.8 Images
 2.9 HII Database
 2.10 Forms Browser
 2.11 Configuration Settings
 2.12 Form Callback Logic
 2.13 Driver Model Interaction
 2.14 Human Interface Component Interactions
 2.15 Standards Map Forms
 3 Code Definitions
 3.1 Package Lists and Package Headers
 3.2 Simplified Font Package
 3.3 Font Package
 3.4 Device Path Package
 3.5 GUID Package
 3.6 String Package
 3.7 Image Package
 3.8 Forms Package
 3.9 Keyboard Package
 3.10 Animations Package
32. [HII Protocols](protocols/hii/README.md)
 1 Font Protocol
 2 EFI HII Font Ex Protocol
 2.1 Code Definitions
 3 String Protocol
 4 Image Protocol
 5 EFI HII Image Ex Protocol
 6 EFI HII Image Decoder Protocol
 7 Font Glyph Generator Protocol
 8 Database Protocol
 8.1 Database Structures
33. [HII Configuration Processing and Browser Protocol](protocols/hiiconf/README.md)
 1 Introduction
 1.2 Data Flow
 2 Configuration Strings
 2.1 String Syntax
 2.2 String Types
 3 EFI Configuration Keyword Handler Protocol
 4 EFI HII Configuration Routing Protocol
 5 EFI HII Configuration Access Protocol
 6 Form Browser Protocol
34. [User Identification](userid/README.md)
 1 User Identification Overview
 1.1 User Identify
 1.2 User Profiles
 1.3 Credential Providers
 1.4 Security Considerations
 1.5 Deferred Execution
 2 User Identification Process
 2.1 User Identification Process
 2.2 Changing The Current User Profile
 2.3 Ready To Boot
 3 Code Definitions
 3.1 User Manager Protocol
 3.2 Credential Provider Protocols
 3.3 Deferred Image Load Protocol
 4 User Information
 4.1 EFI_USER_INFO_ACCESS_POLICY_RECORD
 4.2 EFI_USER_INFO_CBEFF_RECORD
 4.3 EFI_USER_INFO_CREATE_DATE_RECORD
 4.4 EFI_USER_INFO_CREDENTIAL_PROVIDER_RECORD
 4.5 EFI_USER_INFO_CREDENTIAL_PROVIDER_NAME_RECORD
 4.6 EFI_USER_INFO_CREDENTIAL_TYPE_RECORD
 4.7 EFI_USER_INFO_CREDENTIAL_TYPE_NAME_RECORD
 4.8 EFI_USER_INFO_GUID_RECORD
 4.9 EFI_USER_INFO_FAR_RECORD
 4.10 EFI_USER_INFO_IDENTIFIER_RECORD
 4.11 EFI_USER_INFO_IDENTITY_POLICY_RECORD
 4.12 EFI_USER_INFO_NAME_RECORD
 4.13 EFI_USER_INFO_PKCS11_RECORD
 4.14 EFI_USER_INFO_RETRY_RECORD
 4.15 EFI_USER_INFO_USAGE_DATE_RECORD
 4.16 EFI_USER_INFO_USAGE_COUNT_RECORD
 5 User Information Table
35. [Secure Technologies](security/README.md)
 1 Hash Overview
 1.1 Hash References
 1.2 Other Code Definitions
 2 Hash2 Protocols
 2.1 EFI Hash2 Service Binding Protocol
 2.2 EFI Hash2 Protocol
 2.3 Other Code Definitions
 3 Key Management Service
 4 PKCS7 Verify Protocol
 5 Random Number Generator Protocol
 5.1 EFI RNG Algorithm Definitions
 5.2 RNG References
 6 Smart Card Reader and Smart Card Edge Protocols
 6.1 Smart Card Reader Protocol
 6.2 Smart Card Edge Protocol
36. [Protocols - Timestamp Protocol](protocols/timestamp/README.md)
 1 EFI Timestamp Protocol
37. [Appendix A - GUID and Time Formats](appendices/a-guid-time/README.md)
38. [Appendix B - Console](appendices/b-console/README.md)
 1 EFI_SIMPLE_TEXT_INPUT_PROTOCOL and EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL
 2 EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL
39. [Appendix C - Device Path Examples](appendices/c-devicepath/README.md)
 1 Example Computer System
 2 Legacy Floppy
 3 IDE Disk
 4 Secondary Root PCI Bus with PCI to PCI Bridge
 5 ACPI Terms
 6 EFI Device Path as a Name Space
40. [Appendix D - Status Codes](appendices/d-status/README.md)
41. [Appendix E - Universal Network Driver Interfaces](appendices/e-undi/README.md)
 1 Introduction
 1.1 Definitions
 1.2 Referenced Specifications
 1.3 OS Network Stacks
 2 Overview
 2.1 32/64-bit UNDI Interface
 3 UNDI C Definitions
 3.1 Portability Macros
 3.2 Miscellaneous Macros
 3.3 Portability Types
 3.4 Simple Types
 3.5 Compound Types
 4 UNDI Commands
 4.1 Command Linking and Queuing
 4.2 Get State
 4.3 Start
 4.4 Stop
 4.5 Get Init Info
 4.6 Get Config Info
 4.7 Initialize
 4.8 Reset
 4.9 Shutdown
 4.10 Interrupt Enables
 4.11 Receive Filters
 4.12 Station Address
 4.13 Statistics
 4.14 MCast IP To MAC
 4.15 NvData
 4.16 Get Status
 4.17 Fill Header
 4.18 Transmit
 4.19 Receive
 4.20 PXE 2.1 specification wire protocol clarifications
42. [Appendix F - Using the Simple Pointer Protocol](appendices/f-simple-pointer/README.md)
43. [Appendix G - Using the EFI Extended SCSI Pass Thru Protocol](appendices/g-scsi-passthrough/README.md)
44. [Appendix H - Compression Source Code](appendices/h-compression/README.md)
45. [Appendix I - Decompression Source Code](appendices/i-decompression/README.md)
46. [Appendix J - EFI Byte Code Virtual Machine Opcode List](j-appendices/ebc/README.md)
47. [Appendix K - Alphabetic Function Lists](appendices/k-alpha-functions/README.md)
48. [Appendix L - EFI 1.10 Protocol Changes and Deprecation List](appendices/l-efi-1.10-compat/README.md)
 1 Protocol and GUID Name Changes from EFI 1.10
 2 Deprecated Protocols
49. [Appendix M - Formats - Language Codes and Language Code Arrays](appendices/m-formats/README.md)
 1 Specifying individual language codes
 1.1 Specifying language code arrays:
50. [Appendix N - Common Platform Error Record](appendices/n-error-record/README.md)
 1 Introduction
 2 Format
 2.1 Record Header
 2.2 Section Descriptor
 2.3 Non-standard Section Body
 2.4 Processor Error Sections
 2.5 Memory Error Section
 2.6 Memory Error Section 2
 2.7 PCI Express Error Section
 2.8 PCI/PCI-X Bus Error Section
 2.9 PCI/PCI-X Component Error Section
 2.10 Firmware Error Record Reference
 2.11 DMAr Error Sections
 2.12 Error Status
51. [Appendix O - UEFI ACPI Data Table](appendices/o-acpi/README.md)
52. [Appendix P - Hardware Error Record Persistence Usage](appendices/p-hardware-error-record/README.md)
 1 Determining space
 2 Saving Hardware error records
 3 Clearing error record variables
53. [Appendix Q - References](appendices/q-references/README.md)
 1 Related Information
 2 Prerequisite Specifications
 2.1 ACPI Specification
 2.2 Additional Considerations for Itanium-Based Platforms
54. [Appendix R - Glossary](appendices/r-glossary/README.md)
