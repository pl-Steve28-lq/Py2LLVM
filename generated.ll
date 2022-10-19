; ModuleID = ""
target triple = "unknown-unknown-unknown"
target datalayout = ""

define i32 @"main"() 
{
entry:
  %".2" = alloca i32
  store i32 777767777, i32* %".2"
  %".4" = alloca i32
  store i32 2, i32* %".4"
  br label %"while.test"
while.test:
  %".7" = load i32, i32* %".4"
  %".8" = icmp slt i32 %".7", 1000
  br i1 %".8", label %"while.body", label %"while.end"
while.body:
  %".9" = load i32, i32* %".4"
  %".10" = call i32 @"isPrime"(i32 %".9")
  %".11" = icmp ne i32 0, %".10"
  br i1 %".11", label %"while.body.if", label %"while.body.else"
while.body.if:
  %".13" = load i32, i32* %".4"
  %".14" = call i32 @"print"(i32 %".13")
  br label %"while.body.endif"
while.body.else:
  br label %"while.body.endif"
while.body.endif:
  %".17" = load i32, i32* %".4"
  %".18" = add i32 %".17", 1
  store i32 %".18", i32* %".4"
  br label %"while.test"
while.end:
  ret i32 0
}

declare i32 @"print"(i32 %".1") 

define i32 @"isPrime"(i32 %".1") 
{
entry:
  %".3" = icmp eq i32 %".1", 2
  br i1 %".3", label %"entry.if", label %"entry.else"
entry.if:
  ret i32 1
entry.else:
  br label %"entry.endif"
entry.endif:
  %".7" = urem i32 %".1", 2
  %".8" = icmp eq i32 %".7", 0
  br i1 %".8", label %"entry.endif.if", label %"entry.endif.else"
entry.endif.if:
  ret i32 0
entry.endif.else:
  br label %"entry.endif.endif"
entry.endif.endif:
  %".12" = alloca i32
  store i32 3, i32* %".12"
  %".14" = alloca i32
  store i32 1, i32* %".14"
  br label %"while.test"
while.test:
  %".17" = load i32, i32* %".12"
  %".18" = load i32, i32* %".12"
  %".19" = mul i32 %".17", %".18"
  %".20" = icmp sle i32 %".19", %".1"
  %".21" = load i32, i32* %".14"
  %".22" = icmp ne i32 0, %".21"
  %".23" = and i1 %".20", %".22"
  br i1 %".23", label %"while.body", label %"while.end"
while.body:
  %".24" = load i32, i32* %".12"
  %".25" = urem i32 %".1", %".24"
  %".26" = icmp eq i32 %".25", 0
  br i1 %".26", label %"while.body.if", label %"while.body.else"
while.body.if:
  store i32 0, i32* %".14"
  br label %"while.body.endif"
while.body.else:
  br label %"while.body.endif"
while.body.endif:
  %".31" = load i32, i32* %".12"
  %".32" = add i32 %".31", 2
  store i32 %".32", i32* %".12"
  br label %"while.test"
while.end:
  %".36" = load i32, i32* %".14"
  ret i32 %".36"
}

