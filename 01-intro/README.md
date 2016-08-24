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
foo
## Overview {#overview}
foo
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
