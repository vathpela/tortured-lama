# Introduction {#intro}

This *Unified Extensible Firmware Interface* (hereafter known as UEFI)
*Specification* describes an interface between the operating system (OS) and the
platform firmware. UEFI was preceded by the *Extensible Firmware Interface
Specification 1.10* (EFI). As a result, some code and certain protocol names
retain the EFI designation. Unless otherwise noted, EFI designations in this
specification may be assumed to be part of UEFI.

The interface is in the form of data tables that contain platform-related
information, and boot and runtime service calls that are available to the OS
loader and the OS. Together, these provide a standard environment for booting
an OS. This specification is designed as a pure interface specification. As
such, the specification defines the set of interfaces and structures that
platform firmware must implement. Similarly, the specification defines the set
of interfaces and structures that the OS may use in booting. How either the
firmware developer chooses to implement the required elements or the OS
developer chooses to make use of those interfaces and structures is an
implementation decision left for the developer.

The intent of this specification is to define a way for the OS and platform
firmware to communicate only information necessary to support the OS boot
process. This is accomplished through a formal and complete abstract
specification of the software-visible interface presented to the OS by the
platform and firmware.

Using this formal definition, a shrink-wrap OS intended to run on platforms
compatible with supported processor specifications will be able to boot on a
variety of system designs without further platform or OS customization. The
definition will also allow for platform innovation to introduce new features
and functionality that enhance platform capability without requiring new code
to be written in the OS boot sequence.

Furthermore, an abstract specification opens a route to replace legacy devices
and firmware code over time. New device types and associated code can provide
equivalent functionality through the same defined abstract interface, again
without impact on the OS boot support code.

The specification is applicable to a full range of hardware platforms from
mobile systems to servers.  The specification provides a core set of services
along with a selection of protocol interfaces. The selection of protocol
interfaces can evolve over time to be optimized for various platform market
segments. At the same time, the specification allows maximum extensibility and
customization abilities for OEMs to allow differentiation. In this, the purpose
of UEFI is to define an evolutionary path from the traditional “PC-AT”-style
boot world into a legacy-API free environment.

## UEFI Driver Model Extensions {#extensions}

Access to boot devices is provided through a set of protocol interfaces. One
purpose of the UEFI *Driver Model* is to provide a replacement for
"PC-AT"-style option ROMs. It is important to point out that drivers written to
the UEFI *Driver Model* are designed to access boot devices in the preboot
environment.  They are not designed to replace the high-performance,
OS-specific drivers.

The UEFI Driver Model is designed to support the execution of modular pieces of
code, also known as drivers, that run in the preboot environment. These drivers
may manage or control hardware buses and devices on the platform, or they may
provide some software-derived, platform-specific service.

The *UEFI Driver Model* also contains information required by UEFI driver
writers to design and implement any combination of bus drivers and device
drivers that a platform might need to boot a UEFI-compliant OS.

The *UEFI Driver Model* is designed to be generic and can be adapted to any
type of bus or device.  The *UEFI Specification* describes how to write PCI bus
drivers, PCI device drivers, USB bus drivers, USB device drivers, and SCSI
drivers. Additional details are provided that allow UEFI drivers to be stored
in PCI option ROMs, while maintaining compatibility with legacy option ROM
images.

One of the design goals in the *UEFI Specification* is keeping the driver
images as small as possible.  However, if a driver is required to support
multiple processor architectures, a driver object file would also be required
to be shipped for each supported processor architecture. To address this space
issue, this specification also defines the *EFI Byte Code Virtual Machine*. A
UEFI driver can be compiled into a single EFI Byte Code object file. UEFI
Specification-complaint firmware must contain an EFI Byte Code interpreter.
This allows a single EFI Byte Code object file that supports multiple processor
architectures to be shipped. Another space saving technique is the use of
compression. This specification defines compression and decompression
algorithms that may be used to reduce the size of UEFI Drivers, and thus reduce
the overhead when UEFI Drivers are stored in ROM devices.

The information contained in the *UEFI Specification* can be used by OSVs,
IHVs, OEMs, and firmware vendors to design and implement firmware conforming to
this specification, drivers that produce standard protocol interfaces, and
operating system loaders that can be used to boot UEFI- compliant operating
systems.

## Overview {#overview}

The UEFI Specification is organized as listed in [Table 1](#table1).

| Section/Appendix | Description |
| ---------------- | ----------- |
| [Introduction](#intro) | Introduces the UEFI Specification and topics related to using the specification.|
| [Overview](#overview) | Describes the major components of UEFI, including the boot manager, firmware core, calling conventions, protocols, and requirements.|
| [Boot Manager](03-bootmanager/README.md#bootman) | Describes the boot manager, which is used to load drivers and applications written to this specification.|
| [EFI System Table](#systab) | Describes the EFI System Table that is passed to every compliant driver and application.|
| [GUID Partition Table (GPT) Format](#gpt) | Defines a new partitioning scheme that must be supported by firmware conforming to this specification.|
| [Services — Boot Services](#bootservices) | Contains the definitions of the fundamental services that are present in a UEFI-compliant system before an OS is booted.|
| [Services — Runtime Services](#runtimeservices) | Contains definitions for the fundamental services that are present in a compliant system before and after an OS is booted.|
| [Protocols — EFI Loaded Image](#loaded-image) | Defines the EFI Loaded Image Protocol that describes a UEFI Image that has been loaded into memory.|
| [Protocols — Device Path Protocol] | Defines the device path protocol and provides the information needed to construct and manage device paths in the UEFI environment.|
| [Protocols — UEFI Driver Model] | Describes a generic driver model for UEFI. This includes the set of services and protocols that apply to every bus and device type, including the Driver Binding Protocol, the Platform Driver Override Protocol, the Bus Specific Driver Override Protocol, the Driver Diagnostics Protocol, the Driver Configuration Protocol, and the Component Name Protocol.|
| [Protocols — Console Support] | Defines the Console I/O protocols, which handle input and output of text-based information intended for the system user while executing in the boot services environment. These protocols include the Simple Input Protocol, the Simple Text Output Protocol, the Graphics Output Protocol, the Simple Pointer Protocol, and the Serial I/O Protocol.|
| [Protocols—Media Access] | Defines the Load File protocol, file system format and media formats for handling removable media.|
| [Protocols — PCI Bus Support] | Defines PCI Bus Drivers, PCI Device Drivers, and PCI Option ROM layouts. The protocols described include the PCI Root Bridge I/O Protocol and the PCI I/O Protocol.|
| [Protocols — SCSI Driver Models and Bus Support] | Defines the SCSI I/O Protocol and the Extended SCSI Pass Thru Protocol that is used to abstract access to a SCSI channel that is produced by a SCSI host controller.|
| [Protocols —iSCSI Boot] | The iSCSI protocol defines a transport for SCSI data over TCP/IP.|
| [Protocols — USB Support] | Defines USB Bus Drivers and USB Device Drivers. The protocols described include the USB2 Host Controller Protocol and the USB I/O Protocol.|
| [Protocols — Debugger Support] | An optional set of protocols that provide the services required to implement a source-level debugger for the UEFI environment. <br>The EFI Debug Port Protocol provides services to communicate with a remote debug host. The Debug Support Protocol provides services to hook processor exceptions, save the processor context, and restore the processor context. These protocols can be used in the implementation of a debug agent on the target system that interacts with the remote debug host.|
| [Protocols — Compression Algorithm Specification] | Describes in detail the compression/decompression algorithm, as well as the EFI Decompress Protocol. The EFI Decompress Protocol provides a standard decompression interface for use at boot time. The EFI Decompress Protocol is used by a PCI Bus Driver to decompress UEFI drivers stored in PCI Option ROMs.|
| [Protocols — ACPI Protocols] | Defines a protocol that may be used to install or remove an ACPI table from a platform.|
| [EFI Byte Code Virtual Machine] | Defines the EFI Byte Code virtual processor and its instruction set. It also defines how EBC object files are loaded into memory, and the mechanism for transitioning from native code to EBC code and back to native code. The information in this document is sufficient to implement an EFI Byte Code interpreter, an EFI Byte Code compiler, and an EFI Byte Code linker.|
| [Network Protocols—SNP, PXE, and BIS] | Defines the protocols that provide access to network devices while executing in the UEFI boot services environment. These protocols include the Simple Network Protocol, the PXE Base Code Protocol, and the Boot Integrity services (BIS) Protocol.|
| [Network Protocols—Managed Network] | Defines the EFI Managed Network Protocol, which provides raw (unformatted) asynchronous network packet I/O services and Managed Network Service Binding Protocol, which is used to locate communication devices that are supported by an MNP driver.|
| [Network Protocols—VLAN and EAP] | Defines a protocol is to provide a manageability interface for VLAN configurations.|
| [Network Protocols—TCP, IP, IPsec, FTP and Configuration] | Defines the EFI TCPv4 (Transmission Control Protocol version 4) Protocol and the EFI IPv4 (Internet Protocol version 4) Protocol interface.|
| [Network Protocols—ARP and DHCP] | Defines the EFI Address Resolution Protocol (ARP) Protocol interface and the EFI DHCPv4 Protocol.|
| [Network Protocols—UDPv4 and MTFPv4] | Defines the EFI UDPv4 (User Datagram Protocol version 4) Protocol that interfaces over the EFI IPv4 Protocol and defines the EFI MTFTPv4 Protocol interface that is built on the EFI UDPv4 Protocol.|
| [Secure Boot and Driver Signing] | Describes Secure Boot and a means of generating a digital signature for UEFI.|
| [Human Interface Infrastructure Overview] | Defines the core code and services that are required for an implementation of the Human Interface Infrastructure (HII), including basic mechanisms for managing user input and code definitions for related protocols.|
| [HII Protocols] | Provides code definitions for the HII-related protocols, functions, and type definitions, including management of font, strings, images and databases.|
| [HII Configuration Processing and Browser Protocol] | Describes the data and APIs used to manage the system’s configuration: the actual data that describes the knobs and settings.|
| [User Identification] | Describes services which describe the current user of the platform.|
| [Firmware Management Protocol] | Provides an abstraction for devices to provide firmware management support.|
| [Secure Technologies] | Describes the protocols for utilizing security technologies including cryptographic hashing and key management.|
| [Protocols - Timestamp Protocol] | Provides a platform independent interface for retrieving a high resolution timestamp counter.|
| A. GUID and Time Formats | Explains the GUID (Guaranteed Unique Identifier) format.|
| B. Console | Describes the requirements for a basic text-based console required by EFI-conformant systems to provide communication capabilities.|
| C. Device Path Examples | Examples of use of the data structures that define various hardware devices to the boot services.|
| D. Status Codes | Lists success, error, and warning codes returned by UEFI interfaces.|
| E. Universal Network Driver Interfaces | Defines the 32/64-bit hardware and software Universal Network Driver Interfaces (UNDIs).|
| F. Using the Simple Pointer Protocol | Provides the suggested usage of the Simple Pointer Protocol.|
| G. Using the EFI Extended SCSI Pass Thru Protocol | Provides an example of how the SCSI Pass Thru Protocol can be used.|
| H. Compression Source Code | The C source code to an implementation of the Compression Algorithm.|
| I. Decompression Source Code | The C source code to an implementation of the EFI Decompression Algorithm.|
| J. EFI Byte Code Virtual Machine Opcode Lists | A summary of the opcodes in the instruction set of the EFI Byte Code Virtual Machine.|
| K. Alphabetic Function List | Lists all UEFI interface functions alphabetically.|
| L. EFI 1.10 Protocol Changes and Deprecation Lists | Lists the Protocol, GUID, and revision identifier name changes and the deprecated protocols compared to the EFI Specification 1.10.|
| M. Formats—Language Codes and Language Code Arrays | Lists the formats for language codes and language code arrays.|
| N. Common Platform Error Record | Describes the common platform error record format for representing platform hardware errors.|
| O. UEFI ACPI Table - Defines the UEFI ACPI table format.|
| P. Hardware Error Record Persistence Usage | Defines Hardware Error Record Persistence usage.|
| Q. References | Lists all necessary or useful specifications, web sites, and other documentation that is referenced in this UEFI specification.|
| R. Glossary | Briefly describes terms defined or referenced by this specification.|
| Index | Provides an index to the key terms and concepts in the specification.|
<a name="#table1">Table 1</a>

## Goals {#goals}
foo
## Target Audience {#audience}
foo
## UEFI Design Overview {#design-overview}
foo
## UEFI Driver Model {#driver-model}
foo
### UEFI Driver Model Goals {#driver-model-goals}
foo
### Legacy Option ROM Issues {#legacy-oprom}
foo
### Migration Requirements {#migration}
foo
### Legacy Operating System Support {#legacy-os}
foo
### Supporting the UEFI Specification on a Legacy Platform {#csm}
foo
## Conventions Used in this Document {#conventions}
foo
### Data Structure Descriptions {#data-structures}
foo
### Protocol Descriptions {#protocols}
foo
### Procedure Descriptions {#procedures}
foo
### Instruction Descriptions {#instructions}
foo
### Pseudo-Code Conventions {#pseudocode}
foo
### Typographic Conventions {#typography}
foo
### Number formats {#numbers}
foo
### Binary prefixes {#binary}
foo
