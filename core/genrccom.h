   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.40  08/06/16            */
   /*                                                     */
   /*                                                     */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Brian L. Dantes                                      */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*      6.23: Corrected compilation errors for files         */
/*            generated by constructs-to-c. DR0861           */
/*                                                           */
/*      6.24: Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW,          */
/*            MAC_MCW, and IBM_TBC).                         */
/*                                                           */
/*            Changed integer type/precision.                */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Converted API macros to function calls.        */
/*                                                           */
/*            Fixed linkage issue when DEBUGGING_FUNCTIONS   */
/*            is set to 0 and PROFILING_FUNCTIONS is set to  */
/*            1.                                             */
/*                                                           */
/*            Changed find construct functionality so that   */
/*            imported modules are search when locating a    */
/*            named construct.                               */
/*                                                           */
/*      6.40: Removed LOCALE definition.                     */
/*                                                           */
/*            Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            ALLOW_ENVIRONMENT_GLOBALS no longer supported. */
/*                                                           */
/*************************************************************/

#ifndef _H_genrccom

#pragma once

#define _H_genrccom

#include "constrct.h"
#include "cstrccom.h"
#include "evaluatn.h"
#include "genrcfun.h"
#include "moduldef.h"
#include "symbol.h"

   void                           SetupGenericFunctions(Environment *);
   Defgeneric                    *EnvFindDefgeneric(Environment *,const char *);
   Defgeneric                    *EnvFindDefgenericInModule(Environment *,const char *);
   Defgeneric                    *LookupDefgenericByMdlOrScope(Environment *,const char *);
   Defgeneric                    *LookupDefgenericInScope(Environment *,const char *);
   Defgeneric                    *EnvGetNextDefgeneric(Environment *,Defgeneric *);
   long                           EnvGetNextDefmethod(Environment *,Defgeneric *,long);
   bool                           EnvIsDefgenericDeletable(Environment *,Defgeneric *);
   bool                           EnvIsDefmethodDeletable(Environment *,Defgeneric *,long);
   void                           UndefgenericCommand(UDFContext *,CLIPSValue *);
   void                           GetDefgenericModuleCommand(UDFContext *,CLIPSValue *);
   void                           UndefmethodCommand(UDFContext *,CLIPSValue *);
   Defmethod                     *GetDefmethodPointer(Defgeneric *,long);
   bool                           EnvUndefgeneric(Environment *,Defgeneric *);
   bool                           EnvUndefmethod(Environment *,Defgeneric *,long);
#if ! OBJECT_SYSTEM
   void                           TypeCommand(UDFContext *,CLIPSValue *);
#endif
#if DEBUGGING_FUNCTIONS || PROFILING_FUNCTIONS
   void                           EnvGetDefmethodDescription(Environment *,char *,size_t,Defgeneric *,long);
#endif
#if DEBUGGING_FUNCTIONS
   bool                           EnvGetDefgenericWatch(Environment *,Defgeneric *);
   void                           EnvSetDefgenericWatch(Environment *,bool,Defgeneric *);
   bool                           EnvGetDefmethodWatch(Environment *,Defgeneric *,long);
   void                           EnvSetDefmethodWatch(Environment *,bool,Defgeneric *,long);
   void                           PPDefgenericCommand(UDFContext *,CLIPSValue *);
   void                           PPDefmethodCommand(UDFContext *,CLIPSValue *);
   void                           ListDefmethodsCommand(UDFContext *,CLIPSValue *);
   const char                    *EnvGetDefmethodPPForm(Environment *,Defgeneric *,long);
   void                           ListDefgenericsCommand(UDFContext *,CLIPSValue *);
   void                           EnvListDefgenerics(Environment *,const char *,Defmodule *);
   void                           EnvListDefmethods(Environment *,const char *,Defgeneric *);
#endif
   void                           GetDefgenericListFunction(UDFContext *,CLIPSValue *);
   void                           EnvGetDefgenericList(Environment *,DATA_OBJECT *,Defmodule *);
   void                           GetDefmethodListCommand(UDFContext *,CLIPSValue *);
   void                           EnvGetDefmethodList(Environment *,Defgeneric *,DATA_OBJECT *);
   void                           GetMethodRestrictionsCommand(UDFContext *,CLIPSValue *);
   void                           EnvGetMethodRestrictions(Environment *,Defgeneric *,long,DATA_OBJECT *);
   SYMBOL_HN                     *GetDefgenericNamePointer(Defgeneric *);
   void                           SetNextDefgeneric(Defgeneric *,Defgeneric *);
   const char                    *EnvDefgenericModule(Environment *,Defgeneric *);
   const char                    *EnvGetDefgenericName(Environment *,Defgeneric *);
   const char                    *EnvGetDefgenericPPForm(Environment *,Defgeneric *);
   SYMBOL_HN                     *EnvGetDefgenericNamePointer(Environment *,Defgeneric *);
   void                           EnvSetDefgenericPPForm(Environment *,Defgeneric *,const char *);

#endif /* _H_genrccom */





