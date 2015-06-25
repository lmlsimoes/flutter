// Copyright (c) 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of cassowary;

class Term extends _EquationMember {
  final Variable variable;
  final double coefficient;

  bool get isConstant => false;

  double get value => coefficient * variable.value;

  Term(this.variable, this.coefficient);

  Expression asExpression() =>
      new Expression([new Term(this.variable, this.coefficient)], 0.0);
}
