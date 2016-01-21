   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  01/06/16             */
   /*                                                     */
   /*             BASIC MATH FUNCTIONS MODULE             */
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
/*      6.24: Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Support for long long integers.                */
/*                                                           */
/*            Converted API macros to function calls.        */
/*                                                           */
/*************************************************************/

#ifndef _H_bmathfun

#pragma once

#define _H_bmathfun

#include "evaluatn.h"

   void                    BasicMathFunctionDefinitions(void *);
   void                    AdditionFunction(void *,DATA_OBJECT_PTR);
   void                    MultiplicationFunction(void *,DATA_OBJECT_PTR);
   void                    SubtractionFunction(void *,DATA_OBJECT_PTR);
   void                    DivisionFunction(void *,DATA_OBJECT_PTR);
   long long               DivFunction(void *);
   void                    SetAutoFloatDividendCommand(UDFContext *,CLIPSValue *);
   void                    GetAutoFloatDividendCommand(UDFContext *,CLIPSValue *);
   bool                    EnvGetAutoFloatDividend(void *);
   bool                    EnvSetAutoFloatDividend(void *,bool);
   void                    IntegerFunction(UDFContext *,CLIPSValue *);
   void                    FloatFunction(UDFContext *,CLIPSValue *);
   void                    AbsFunction(UDFContext *,CLIPSValue *);
   void                    MinFunction(UDFContext *,CLIPSValue *);
   void                    MaxFunction(UDFContext *,CLIPSValue *);

#endif




