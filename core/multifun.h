   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.30  08/16/14            */
   /*                                                     */
   /*           MULTIFIELD FUNCTIONS HEADER FILE          */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary Riley and Brian Dantes                          */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Correction for FalseSymbol/TrueSymbol. DR0859  */
/*                                                           */
/*            Changed name of variable exp to theExp         */
/*            because of Unix compiler warnings of shadowed  */
/*            definitions.                                   */
/*                                                           */
/*      6.24: Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*            Moved ImplodeMultifield to multifld.c.         */
/*                                                           */
/*      6.30: Changed integer type/precision.                */
/*                                                           */
/*            Support for long long integers.                */
/*                                                           */
/*            Changed garbage collection algorithm.          */
/*                                                           */
/*            Fixed memory leaks when error occurred.        */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Fixed linkage issue when DEFMODULE_CONSTRUCT   */
/*            compiler flag is set to 0.                     */
/*                                                           */
/*************************************************************/

#ifndef _H_multifun
#define _H_multifun

#ifndef _H_evaluatn
#include "evaluatn.h"
#endif

   void                    MultifieldFunctionDefinitions(void *);
#if MULTIFIELD_FUNCTIONS
   void                    DeleteFunction(void *,DATA_OBJECT_PTR);
   void                    MVDeleteFunction(void *,DATA_OBJECT_PTR);
   void                    ReplaceFunction(void *,DATA_OBJECT_PTR);
   void                    MVReplaceFunction(void *,DATA_OBJECT_PTR);
   void                    DeleteMemberFunction(void *,DATA_OBJECT_PTR);
   void                    ReplaceMemberFunction(void *,DATA_OBJECT_PTR);
   void                    InsertFunction(void *,DATA_OBJECT_PTR);
   void                    ExplodeFunction(void *,DATA_OBJECT_PTR);
   void                   *ImplodeFunction(void *);
   void                    SubseqFunction(void *,DATA_OBJECT_PTR);
   void                    MVSubseqFunction(void *,DATA_OBJECT_PTR);
   void                    FirstFunction(void *,DATA_OBJECT_PTR);
   void                    RestFunction(void *,DATA_OBJECT_PTR);
   void                    NthFunction(void *,DATA_OBJECT_PTR);
   intBool                 SubsetpFunction(void *);
   void                    MemberFunction(void *,DATA_OBJECT_PTR);
   void                    MultifieldPrognFunction(void *,DATA_OBJECT_PTR);
   void                    ForeachFunction(void *,DATA_OBJECT_PTR);
   void                    GetMvPrognField(void *,DATA_OBJECT_PTR);
   long                    GetMvPrognIndex(void *);
   intBool                 FindDOsInSegment(DATA_OBJECT_PTR,int,DATA_OBJECT_PTR,
                                                   long *,long *,long *,int);
#endif
   int                     ReplaceMultiValueField(void *,struct dataObject *,
                                                         struct dataObject *,
                                                         long,long,
                                                         struct dataObject *,const char *);
   int                     InsertMultiValueField(void *,struct dataObject *,
                                                        struct dataObject *,
                                                        long,struct dataObject *,const char *);
   int                     DeleteMultiValueField(void *,struct dataObject *,struct dataObject *,
                                                        long,long,const char *);

#endif /* _H_multifun */

