   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  01/06/16             */
   /*                                                     */
   /*              PREDICATE FUNCTIONS MODULE             */
   /*******************************************************/

/*************************************************************/
/* Purpose: Contains the code for several predicate          */
/*   functions including not, and, or, eq, neq, <=, >=, <,   */
/*   >, =, <>, symbolp, stringp, lexemep, numberp, integerp, */
/*   floatp, oddp, evenp, multifieldp, sequencep, and        */
/*   pointerp.                                               */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Correction for FalseSymbol/TrueSymbol. DR0859  */
/*                                                           */
/*      6.24: Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Support for long long integers.                */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW and       */
/*            MAC_MCW).                                      */
/*                                                           */
/*************************************************************/

#include <stdio.h>

#include "setup.h"

#include "argacces.h"
#include "envrnmnt.h"
#include "exprnpsr.h"
#include "multifld.h"
#include "router.h"

#include "prdctfun.h"

/**************************************************/
/* PredicateFunctionDefinitions: Defines standard */
/*   math and predicate functions.                */
/**************************************************/
void PredicateFunctionDefinitions(
  void *theEnv)
  {
#if ! RUN_TIME
   EnvDefineFunction2(theEnv,"not", 'b', PTIEF NotFunction, "NotFunction", "11");
   EnvDefineFunction2(theEnv,"and", 'b', PTIEF AndFunction, "AndFunction", "2*");
   EnvDefineFunction2(theEnv,"or", 'b', PTIEF OrFunction, "OrFunction", "2*");

   EnvDefineFunction2(theEnv,"eq", 'b', PTIEF EqFunction, "EqFunction", "2*");
   EnvDefineFunction2(theEnv,"neq", 'b', PTIEF NeqFunction, "NeqFunction", "2*");

   EnvDefineFunction2(theEnv,"<=", 'b', PTIEF LessThanOrEqualFunction, "LessThanOrEqualFunction", "2*n");
   EnvDefineFunction2(theEnv,">=", 'b', PTIEF GreaterThanOrEqualFunction, "GreaterThanOrEqualFunction", "2*n");
   EnvDefineFunction2(theEnv,"<", 'b', PTIEF LessThanFunction, "LessThanFunction", "2*n");
   EnvDefineFunction2(theEnv,">", 'b', PTIEF GreaterThanFunction, "GreaterThanFunction", "2*n");
   EnvDefineFunction2(theEnv,"=", 'b', PTIEF NumericEqualFunction, "NumericEqualFunction", "2*n");
   EnvDefineFunction2(theEnv,"<>", 'b', PTIEF NumericNotEqualFunction, "NumericNotEqualFunction", "2*n");
   EnvDefineFunction2(theEnv,"!=", 'b', PTIEF NumericNotEqualFunction, "NumericNotEqualFunction", "2*n");

   EnvAddUDF(theEnv,"symbolp",     BOOLEAN_TYPE,  SymbolpFunction, "SymbolpFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"wordp",       BOOLEAN_TYPE,  SymbolpFunction, "SymbolpFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"stringp",     BOOLEAN_TYPE,  StringpFunction, "StringpFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"lexemep",     BOOLEAN_TYPE,  LexemepFunction, "LexemepFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"numberp",     BOOLEAN_TYPE,  NumberpFunction, "NumberpFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"integerp",    BOOLEAN_TYPE,  IntegerpFunction, "IntegerpFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"floatp",      BOOLEAN_TYPE,  FloatpFunction,   "FloatpFunction", 1,1,NULL,NULL);
   
   EnvAddUDF(theEnv,"oddp",        BOOLEAN_TYPE,  OddpFunction,         "OddpFunction", 1,1,"l", NULL);
   EnvAddUDF(theEnv,"evenp",       BOOLEAN_TYPE,  EvenpFunction,        "EvenpFunction",  1,1,"l", NULL);
   
   EnvAddUDF(theEnv,"multifieldp", BOOLEAN_TYPE,  MultifieldpFunction, "MultifieldpFunction", 1,1,NULL,NULL);
   EnvAddUDF(theEnv,"sequencep",   BOOLEAN_TYPE,  MultifieldpFunction, "MultifieldpFunction", 1,1,NULL,NULL); // TBD Remove?
   EnvAddUDF(theEnv,"pointerp",    BOOLEAN_TYPE,  PointerpFunction,    "PointerpFunction", 1,1,NULL,NULL);
#else
#if MAC_XCD
#pragma unused(theEnv)
#endif
#endif
  }

/************************************/
/* EqFunction: H/L access routine   */
/*   for the eq function.           */
/************************************/
bool EqFunction(
  void *theEnv)
  {
   DATA_OBJECT item, nextItem;
   int numArgs, i;
   struct expr *theExpression;

   /*====================================*/
   /* Determine the number of arguments. */
   /*====================================*/

   numArgs = EnvRtnArgCount(theEnv);
   if (numArgs == 0) return(false);

   /*==============================================*/
   /* Get the value of the first argument against  */
   /* which subsequent arguments will be compared. */
   /*==============================================*/

   theExpression = GetFirstArgument();
   EvaluateExpression(theEnv,theExpression,&item);

   /*=====================================*/
   /* Compare all arguments to the first. */
   /* If any are the same, return false.  */
   /*=====================================*/

   theExpression = GetNextArgument(theExpression);
   for (i = 2 ; i <= numArgs ; i++)
     {
      EvaluateExpression(theEnv,theExpression,&nextItem);

      if (GetType(nextItem) != GetType(item))
        { return(false); }

      if (GetType(nextItem) == MULTIFIELD)
        {
         if (MultifieldDOsEqual(&nextItem,&item) == false)
           { return(false); }
        }
      else if (nextItem.value != item.value)
        { return(false); }

      theExpression = GetNextArgument(theExpression);
     }

   /*=====================================*/
   /* All of the arguments were different */
   /* from the first. Return true.        */
   /*=====================================*/

   return(true);
  }

/*************************************/
/* NeqFunction: H/L access routine   */
/*   for the neq function.           */
/*************************************/
bool NeqFunction(
  void *theEnv)
  {
   DATA_OBJECT item, nextItem;
   int numArgs, i;
   struct expr *theExpression;

   /*====================================*/
   /* Determine the number of arguments. */
   /*====================================*/

   numArgs = EnvRtnArgCount(theEnv);
   if (numArgs == 0) return(false);

   /*==============================================*/
   /* Get the value of the first argument against  */
   /* which subsequent arguments will be compared. */
   /*==============================================*/

   theExpression = GetFirstArgument();
   EvaluateExpression(theEnv,theExpression,&item);

   /*=====================================*/
   /* Compare all arguments to the first. */
   /* If any are different, return false. */
   /*=====================================*/

   for (i = 2, theExpression = GetNextArgument(theExpression);
        i <= numArgs;
        i++, theExpression = GetNextArgument(theExpression))
     {
      EvaluateExpression(theEnv,theExpression,&nextItem);
      if (GetType(nextItem) != GetType(item))
        { continue; }
      else if (nextItem.type == MULTIFIELD)
        {
         if (MultifieldDOsEqual(&nextItem,&item) == true)
           { return(false); }
        }
      else if (nextItem.value == item.value)
        { return(false); }
     }

   /*=====================================*/
   /* All of the arguments were identical */
   /* to the first. Return true.          */
   /*=====================================*/

   return(true);
  }

/*****************************************/
/* StringpFunction: H/L access routine   */
/*   for the stringp function.           */
/*****************************************/
void StringpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,STRING_TYPE))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/*****************************************/
/* SymbolpFunction: H/L access routine   */
/*   for the symbolp function.           */
/*****************************************/
void SymbolpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,SYMBOL_TYPE))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/*****************************************/
/* LexemepFunction: H/L access routine   */
/*   for the lexemep function.           */
/*****************************************/
void LexemepFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,LEXEME_TYPES))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/*****************************************/
/* NumberpFunction: H/L access routine   */
/*   for the numberp function.           */
/*****************************************/
void NumberpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,NUMBER_TYPES))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/****************************************/
/* FloatpFunction: H/L access routine   */
/*   for the floatp function.           */
/****************************************/
void FloatpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,FLOAT_TYPE))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/******************************************/
/* IntegerpFunction: H/L access routine   */
/*   for the integerp function.           */
/******************************************/
void IntegerpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,INTEGER_TYPE))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/*********************************************/
/* MultifieldpFunction: H/L access routine   */
/*   for the multifieldp function.           */
/*********************************************/
void MultifieldpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,MULTIFIELD_TYPE))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/******************************************/
/* PointerpFunction: H/L access routine   */
/*   for the pointerp function.           */
/******************************************/
void PointerpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   UDFArgTypeCheck(context,1,ANY_TYPE,&item);

   if (CVIsType(&item,EXTERNAL_ADDRESS_TYPE))
     { CVSetBoolean(returnValue,true); }
   else
     { CVSetBoolean(returnValue,false); }
  }

/*************************************/
/* NotFunction: H/L access routine   */
/*   for the not function.           */
/*************************************/
bool NotFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT result;

   theArgument = GetFirstArgument();
   if (theArgument == NULL) { return(false); }

   if (EvaluateExpression(theEnv,theArgument,&result)) return(false);

   if ((result.value == EnvFalseSymbol(theEnv)) && (result.type == SYMBOL))
     { return(true); }
   
   return(false);
  }

/*************************************/
/* AndFunction: H/L access routine   */
/*   for the and function.           */
/*************************************/
bool AndFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT result;

   for (theArgument = GetFirstArgument();
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument))
     {
      if (EvaluateExpression(theEnv,theArgument,&result)) return(false);
      if ((result.value == EnvFalseSymbol(theEnv)) && (result.type == SYMBOL))
        { return(false); }
     }

   return(true);
  }

/************************************/
/* OrFunction: H/L access routine   */
/*   for the or function.           */
/************************************/
bool OrFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT result;

   for (theArgument = GetFirstArgument();
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument))
     {
      if (EvaluateExpression(theEnv,theArgument,&result)) return(false);

      if ((result.value != EnvFalseSymbol(theEnv)) || (result.type != SYMBOL))
        { return(true); }
     }

   return(false);
  }

/*****************************************/
/* LessThanOrEqualFunction: H/L access   */
/*   routine for the <= function.        */
/*****************************************/
bool LessThanOrEqualFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT rv1, rv2;
   int pos = 1;

   /*=========================*/
   /* Get the first argument. */
   /*=========================*/

   theArgument = GetFirstArgument();
   if (theArgument == NULL) { return(true); }
   if (! GetNumericArgument(theEnv,theArgument,"<=",&rv1,false,pos)) return(false);
   pos++;

   /*====================================================*/
   /* Compare each of the subsequent arguments to its    */
   /* predecessor. If any is greater, then return false. */
   /*====================================================*/

   for (theArgument = GetNextArgument(theArgument);
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument), pos++)
     {
      if (! GetNumericArgument(theEnv,theArgument,"<=",&rv2,false,pos)) return(false);
      if (rv1.type == INTEGER)
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToLong(rv1.value) > ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if ((double) ValueToLong(rv1.value) > ValueToDouble(rv2.value))
              { return(false); }
           }
        }
      else
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToDouble(rv1.value) > (double) ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if (ValueToDouble(rv1.value) > ValueToDouble(rv2.value))
              { return(false); }
           }
        }

      rv1.type = rv2.type;
      rv1.value = rv2.value;
     }

   /*======================================*/
   /* Each argument was less than or equal */
   /* to it predecessor. Return true.      */
   /*======================================*/

   return(true);
  }

/********************************************/
/* GreaterThanOrEqualFunction: H/L access   */
/*   routine for the >= function.           */
/********************************************/
bool GreaterThanOrEqualFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT rv1, rv2;
   int pos = 1;

   /*=========================*/
   /* Get the first argument. */
   /*=========================*/

   theArgument = GetFirstArgument();
   if (theArgument == NULL) { return(true); }
   if (! GetNumericArgument(theEnv,theArgument,">=",&rv1,false,pos)) return(false);
   pos++;

   /*===================================================*/
   /* Compare each of the subsequent arguments to its   */
   /* predecessor. If any is lesser, then return false. */
   /*===================================================*/

   for (theArgument = GetNextArgument(theArgument);
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument), pos++)
     {
      if (! GetNumericArgument(theEnv,theArgument,">=",&rv2,false,pos)) return(false);
      if (rv1.type == INTEGER)
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToLong(rv1.value) < ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if ((double) ValueToLong(rv1.value) < ValueToDouble(rv2.value))
              { return(false); }
           }
        }
      else
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToDouble(rv1.value) < (double) ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if (ValueToDouble(rv1.value) < ValueToDouble(rv2.value))
              { return(false); }
           }
        }

      rv1.type = rv2.type;
      rv1.value = rv2.value;
     }

   /*=========================================*/
   /* Each argument was greater than or equal */
   /* to its predecessor. Return true.        */
   /*=========================================*/

   return(true);
  }

/**********************************/
/* LessThanFunction: H/L access   */
/*   routine for the < function.  */
/**********************************/
bool LessThanFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT rv1, rv2;
   int pos = 1;

   /*=========================*/
   /* Get the first argument. */
   /*=========================*/

   theArgument = GetFirstArgument();
   if (theArgument == NULL) { return(true); }
   if (! GetNumericArgument(theEnv,theArgument,"<",&rv1,false,pos)) return(false);
   pos++;

   /*==========================================*/
   /* Compare each of the subsequent arguments */
   /* to its predecessor. If any is greater or */
   /* equal, then return false.                */
   /*==========================================*/

   for (theArgument = GetNextArgument(theArgument);
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument), pos++)
     {
      if (! GetNumericArgument(theEnv,theArgument,"<",&rv2,false,pos)) return(false);
      if (rv1.type == INTEGER)
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToLong(rv1.value) >= ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if ((double) ValueToLong(rv1.value) >= ValueToDouble(rv2.value))
              { return(false); }
           }
        }
      else
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToDouble(rv1.value) >= (double) ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if (ValueToDouble(rv1.value) >= ValueToDouble(rv2.value))
              { return(false); }
           }
        }

      rv1.type = rv2.type;
      rv1.value = rv2.value;
     }

   /*=================================*/
   /* Each argument was less than its */
   /* predecessor. Return true.       */
   /*=================================*/

   return(true);
  }

/*************************************/
/* GreaterThanFunction: H/L access   */
/*   routine for the > function.     */
/*************************************/
bool GreaterThanFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT rv1, rv2;
   int pos = 1;

   /*=========================*/
   /* Get the first argument. */
   /*=========================*/

   theArgument = GetFirstArgument();
   if (theArgument == NULL) { return(true); }
   if (! GetNumericArgument(theEnv,theArgument,">",&rv1,false,pos)) return(false);
   pos++;

   /*==========================================*/
   /* Compare each of the subsequent arguments */
   /* to its predecessor. If any is lesser or  */
   /* equal, then return false.                */
   /*==========================================*/

   for (theArgument = GetNextArgument(theArgument);
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument), pos++)
     {
      if (! GetNumericArgument(theEnv,theArgument,">",&rv2,false,pos)) return(false);
      if (rv1.type == INTEGER)
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToLong(rv1.value) <= ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if ((double) ValueToLong(rv1.value) <= ValueToDouble(rv2.value))
              { return(false); }
           }
        }
      else
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToDouble(rv1.value) <= (double) ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if (ValueToDouble(rv1.value) <= ValueToDouble(rv2.value))
              { return(false); }
           }
        }

      rv1.type = rv2.type;
      rv1.value = rv2.value;
     }

   /*================================*/
   /* Each argument was greater than */
   /* its predecessor. Return true.  */
   /*================================*/

   return(true);
  }

/**************************************/
/* NumericEqualFunction: H/L access   */
/*   routine for the = function.      */
/**************************************/
bool NumericEqualFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT rv1, rv2;
   int pos = 1;

   /*=========================*/
   /* Get the first argument. */
   /*=========================*/

   theArgument = GetFirstArgument();

   if (theArgument == NULL) { return(true); }
   if (! GetNumericArgument(theEnv,theArgument,"=",&rv1,false,pos)) return(false);
   pos++;

   /*=================================================*/
   /* Compare each of the subsequent arguments to the */
   /* first. If any is unequal, then return false.    */
   /*=================================================*/

   for (theArgument = GetNextArgument(theArgument);
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument), pos++)
     {
      if (! GetNumericArgument(theEnv,theArgument,"=",&rv2,false,pos)) return(false);
      if (rv1.type == INTEGER)
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToLong(rv1.value) != ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if ((double) ValueToLong(rv1.value) != ValueToDouble(rv2.value))
              { return(false); }
           }
        }
      else
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToDouble(rv1.value) != (double) ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if (ValueToDouble(rv1.value) != ValueToDouble(rv2.value))
              { return(false); }
           }
        }
     }

   /*=================================*/
   /* All arguments were equal to the */
   /* first argument. Return true.    */
   /*=================================*/

   return(true);
  }

/*****************************************/
/* NumericNotEqualFunction: H/L access   */
/*   routine for the <> function.        */
/*****************************************/
bool NumericNotEqualFunction(
  void *theEnv)
  {
   EXPRESSION *theArgument;
   DATA_OBJECT rv1, rv2;
   int pos = 1;

   /*=========================*/
   /* Get the first argument. */
   /*=========================*/

   theArgument = GetFirstArgument();
   if (theArgument == NULL) { return(true); }
   if (! GetNumericArgument(theEnv,theArgument,"<>",&rv1,false,pos)) return(false);
   pos++;

   /*=================================================*/
   /* Compare each of the subsequent arguments to the */
   /* first. If any is equal, then return false.      */
   /*=================================================*/

   for (theArgument = GetNextArgument(theArgument);
        theArgument != NULL;
        theArgument = GetNextArgument(theArgument), pos++)
     {
      if (! GetNumericArgument(theEnv,theArgument,"<>",&rv2,false,pos)) return(false);
      if (rv1.type == INTEGER)
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToLong(rv1.value) == ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if ((double) ValueToLong(rv1.value) == ValueToDouble(rv2.value))
              { return(false); }
           }
        }
      else
        {
         if (rv2.type == INTEGER)
           {
            if (ValueToDouble(rv1.value) == (double) ValueToLong(rv2.value))
              { return(false); }
           }
         else
           {
            if (ValueToDouble(rv1.value) == ValueToDouble(rv2.value))
              { return(false); }
           }
        }
     }

   /*===================================*/
   /* All arguments were unequal to the */
   /* first argument. Return true.      */
   /*===================================*/

   return(true);
  }

/**************************************/
/* OddpFunction: H/L access routine   */
/*   for the oddp function.           */
/**************************************/
void OddpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;
   CLIPSInteger num, halfnum;
      
   /*============================================*/
   /* Check for the correct number of arguments. */
   /*============================================*/

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }
     
   /*===========================================*/
   /* Check for the correct types of arguments. */
   /*===========================================*/
     
   if (! UDFArgTypeCheck(context,1,INTEGER_TYPE,&item))
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   /*===========================*/
   /* Compute the return value. */
   /*===========================*/
   
   num = CVToInteger(&item);
   halfnum = (num / 2) * 2;

   if (num == halfnum) CVSetBoolean(returnValue,false);
   else CVSetBoolean(returnValue,true);
  }

/***************************************/
/* EvenpFunction: H/L access routine   */
/*   for the evenp function.           */
/***************************************/
void EvenpFunction(
  UDFContext *context,
  CLIPSValue *returnValue)
  {
   CLIPSValue item;
   CLIPSInteger num, halfnum;
   
   /*============================================*/
   /* Check for the correct number of arguments. */
   /*============================================*/

   if (UDFArgCountCheck(context) < 0)
     {
      CVSetBoolean(returnValue,false);
      return;
     }
     
   /*===========================================*/
   /* Check for the correct types of arguments. */
   /*===========================================*/
     
   if (! UDFArgTypeCheck(context,1,INTEGER_TYPE,&item))
     {
      CVSetBoolean(returnValue,false);
      return;
     }

   /*===========================*/
   /* Compute the return value. */
   /*===========================*/
   
   num = CVToInteger(&item);
   halfnum = (num / 2) * 2;
   
   if (num != halfnum) CVSetBoolean(returnValue,false);
   else CVSetBoolean(returnValue,true);
  }



