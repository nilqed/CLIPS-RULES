   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  01/20/16             */
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
/*      6.40: Auto-float-dividend always enabled.            */
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
   void                    IntegerFunction(UDFContext *,CLIPSValue *);
   void                    FloatFunction(UDFContext *,CLIPSValue *);
   void                    AbsFunction(UDFContext *,CLIPSValue *);
   void                    MinFunction(UDFContext *,CLIPSValue *);
   void                    MaxFunction(UDFContext *,CLIPSValue *);

#endif




