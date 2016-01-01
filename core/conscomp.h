   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.30  08/16/14            */
   /*                                                     */
   /*           CONSTRUCT COMPILER HEADER FILE            */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Modifications to use the system constant       */
/*            FILENAME_MAX to check file name lengths.       */
/*            DR0856                                         */
/*                                                           */
/*            Corrected compilation errors for files         */
/*            generated by constructs-to-c. DR0861           */
/*                                                           */
/*      6.24: Used EnvClear rather than Clear in             */
/*            InitCImage initialization code.                */
/*                                                           */
/*            Added environment parameter to GenClose.       */
/*            Added environment parameter to GenOpen.        */
/*                                                           */
/*            Removed SHORT_LINK_NAMES code as this option   */
/*            is no longer supported.                        */
/*                                                           */
/*            Support for run-time programs directly passing */
/*            the hash tables for initialization.            */
/*                                                           */
/*      6.30: Added path name argument to constructs-to-c.   */
/*                                                           */
/*            Changed integer type/precision.                */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW, MAC_MCW, */
/*            IBM_TBC, IBM_MSC, IBM_ICB, IBM_ZTC, and        */
/*            IBM_SC).                                       */
/*                                                           */
/*            Use genstrcpy instead of strcpy.               */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*************************************************************/

#ifndef _H_conscomp
#define _H_conscomp

#define ArbitraryPrefix(codeItem,i)    (codeItem)->arrayNames[(i)]

#define ModulePrefix(codeItem)         (codeItem)->arrayNames[0]
#define ConstructPrefix(codeItem)      (codeItem)->arrayNames[1]

#ifndef _H_constrct
#include "constrct.h"
#endif
#ifndef _H_extnfunc
#include "extnfunc.h"
#endif
#ifndef _H_symblcmp
#include "symblcmp.h"
#endif
#ifndef _H_moduldef
#include "moduldef.h"
#endif

#define CONSTRUCT_COMPILER_DATA 41

struct CodeGeneratorItem
  {
   const char *name;
   void (*beforeFunction)(void *);
   void (*initFunction)(void *,FILE *,int,int);
   int (*generateFunction)(void *,const char *,const char *,char *,int,FILE *,int,int);
   int priority;
   char **arrayNames;
   int arrayCount;
   struct CodeGeneratorItem *next;
  };

struct constructCompilerData
  { 
   int ImageID;
   FILE *HeaderFP;
   int MaxIndices;
   FILE *ExpressionFP;
   FILE *FixupFP;
   const char *FilePrefix;
   const char *PathName;
   char *FileNameBuffer;
   intBool ExpressionHeader;
   long ExpressionCount;
   int ExpressionVersion;
   int CodeGeneratorCount;
   struct CodeGeneratorItem *ListOfCodeGeneratorItems;
  };

#define ConstructCompilerData(theEnv) ((struct constructCompilerData *) GetEnvironmentData(theEnv,CONSTRUCT_COMPILER_DATA))

#ifndef _STDIO_INCLUDED_
#define _STDIO_INCLUDED_
#include <stdio.h>
#endif

struct CodeGeneratorFile
 {
  const char *filePrefix;
  const char *pathName;
  char *fileNameBuffer;
  int id,version;
 };

   void                      InitializeConstructCompilerData(void *);
   void                      ConstructsToCCommandDefinition(void *);
   FILE                     *NewCFile(void *,const char *,const char *,char *,int,int,int);
   int                       ExpressionToCode(void *,FILE *,struct expr *);
   void                      PrintFunctionReference(void *,FILE *,struct FunctionDefinition *);
   struct CodeGeneratorItem *AddCodeGeneratorItem(void *,const char *,int,
                                                         void (*)(void *),
                                                         void (*)(void *,FILE *,int,int),
                                                         int (*)(void *,const char *,const char *,char *,int,FILE *,int,int),int);
   FILE                     *CloseFileIfNeeded(void *,FILE *,int *,int *,int,int *,struct CodeGeneratorFile *);
   FILE                     *OpenFileIfNeeded(void *,FILE *,const char *,const char *,char *,int,int,int *,
                                                     int,FILE *,const char *,char *,int,struct CodeGeneratorFile *);
   void                      MarkConstructBsaveIDs(void *,int);
   void                      ConstructHeaderToCode(void *,FILE *,struct constructHeader *,int,int,
                                                         int,const char *,const char *);
   void                      ConstructModuleToCode(void *,FILE *,struct defmodule *,int,int,
                                                         int,const char *);
   void                      PrintHashedExpressionReference(void *,FILE *,struct expr *,int,int);

#endif




