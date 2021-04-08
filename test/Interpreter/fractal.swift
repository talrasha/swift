// RUN: %empty-directory(%t)
// RUN: %target-build-swift %import-libdispatch -emit-library -o %t/%target-library-name(complex) -emit-module %S/complex.swift -module-link-name complex
// RUN: %target-jit-run %s -I %t -L %t | %FileCheck %s

// RUN: grep -v import %s > %t/main.swift
// RUN: %target-jit-run %t/main.swift %S/complex.swift | %FileCheck %s

// REQUIRES: executable_test
// REQUIRES: swift_interpreter
// REQUIRES: libdispatch

import complex

func printDensity(_ d: Int) {
  if (d > 40) {
     print(" ", terminator: "")
  } else if d > 6 {
     print(".", terminator: "")
  } else if d > 4 {
     print("+", terminator: "")
  } else if d > 2 {
     print("*", terminator: "")
  } else {
     print("#", terminator: "")
  }
}

extension Double {
  func abs() -> Double {
    if (self >= 0.0) { return self }
    return self * -1.0
  }
}

func getMandelbrotIterations(_ c: Complex, maxIterations: Int) -> Int {
  var n = 0
  var z = Complex()
  while (n < maxIterations && z.magnitude() < 4.0) {
    z = z*z + c
    n += 1
  }
  return n
}

func fractal (_ densityFunc:(_ c: Complex, _ maxIterations: Int) -> Int,
              xMin:Double, xMax:Double,
              yMin:Double, yMax:Double,
              rows:Int, cols:Int,
              maxIterations:Int) {
  // Set the spacing for the points in the Mandelbrot set.
  var dX = (xMax - xMin) / Double(rows)
  var dY = (yMax - yMin) / Double(cols)
  // Iterate over the points an determine if they are in the
  // Mandelbrot set.
  for row in stride(from: xMin, to: xMax, by: dX) {
    for col in stride(from: yMin, to: yMax, by: dY) {
      var c = Complex(real: col, imag: row)
      printDensity(densityFunc(c, maxIterations))
    }
    print("\n", terminator: "")
  }
}

fractal(getMandelbrotIterations,
        xMin: -1.35, xMax: 1.4, yMin: -2.0, yMax: 1.05, rows: 40, cols: 80,
        maxIterations: 200)

// CHECK: ################################################################################
// CHECK: ##############################********************##############################
// CHECK: ########################********************************########################
// CHECK: ####################***************************+++**********####################
// CHECK: #################****************************++...+++**********#################
// CHECK: ##############*****************************++++......+************##############
// CHECK: ############******************************++++.......+++************############
// CHECK: ##########******************************+++++....  ...++++************##########
// CHECK: ########******************************+++++....      ..++++++**********#########
// CHECK: #######****************************+++++.......     .....++++++**********#######
// CHECK: ######*************************+++++....... . ..   ............++*********######
// CHECK: #####*********************+++++++++...   ..             . ... ..++*********#####
// CHECK: ####******************++++++++++++.....                       ..++**********####
// CHECK: ###***************++++++++++++++... .                        ...+++**********###
// CHECK: ##**************+++.................                          ....+***********##
// CHECK: ##***********+++++.................                             .++***********##
// CHECK: #**********++++++.....       .....                             ..++***********##
// CHECK: #*********++++++......          .                              ..++************#
// CHECK: #*******+++++.......                                          ..+++************#
// CHECK: #++++............                                            ...+++************#
// CHECK: #++++............                                            ...+++************#
// CHECK: #******+++++........                                          ..+++************#
// CHECK: #********++++++.....            .                              ..++************#
// CHECK: #**********++++++.....        ....                              .++************#
// CHECK: #************+++++.................                            ..++***********##
// CHECK: ##*************++++.................                          . ..+***********##
// CHECK: ###***************+.+++++++++++.....                         ....++**********###
// CHECK: ###******************+++++++++++++.....                      ...+++*********####
// CHECK: ####*********************++++++++++....                   ..  ..++*********#####
// CHECK: #####*************************+++++........ . .        . .......+*********######
// CHECK: #######***************************+++..........     .....+++++++*********#######
// CHECK: ########*****************************++++++....      ...++++++**********########
// CHECK: ##########*****************************+++++.....  ....++++***********##########
// CHECK: ###########******************************+++++........+++***********############
// CHECK: #############******************************++++.. ...++***********##############
// CHECK: ################****************************+++...+++***********################
// CHECK: ###################***************************+.+++**********###################
// CHECK: #######################**********************************#######################
// CHECK: ############################************************############################
// CHECK: ################################################################################


func getBurningShipIterations(_ c: Complex, maxIterations: Int) -> Int {
  var n = 0
  var z = Complex()
  while (n < maxIterations && z.magnitude() < 4.0) {
    var zTmp = Complex(real: z.real.abs(), imag: z.imag.abs())
    z = zTmp*zTmp + c
    n += 1
  }
  return n
}

print("\n== BURNING SHIP ==\n\n", terminator: "")

fractal(getBurningShipIterations,
        xMin: -2.0, xMax: 1.2, yMin: -2.1, yMax: 1.2, rows: 40, cols: 80, 
        maxIterations: 200)

// CHECK: ################################################################################
// CHECK: ################################################################################
// CHECK: ################################################################################
// CHECK: #####################################################################*****######
// CHECK: ################################################################*******+...+*###
// CHECK: #############################################################**********+...****#
// CHECK: ###########################################################************. .+****#
// CHECK: #########################################################***********++....+.****
// CHECK: ######################################################************+++......++***
// CHECK: ##############################*******************###************..... .....+++++
// CHECK: ########################*******+++*******************+ .+++++ . .     ........+*
// CHECK: ####################**********+.. .+++*******+.+++**+.                .....+.+**
// CHECK: #################**********++++...+...++ ..   . . .+                ...+++++.***
// CHECK: ##############***********++.....  . ... .                         ...++++++****#
// CHECK: ############*************.......  . .                            ...+++********#
// CHECK: ##########***************.  ..                                  ...+++*********#
// CHECK: #########***************++. ..  . .                            ...+++*********##
// CHECK: #######*****************. ...                                 ...+++**********##
// CHECK: ######*****************+.                                    ...+++**********###
// CHECK: #####****************+++ .                                 .....++***********###
// CHECK: #####**********++..... .                                   ....+++***********###
// CHECK: ####*********+++.. .                                      ....+++***********####
// CHECK: ####********++++.                                         ....+++***********####
// CHECK: ###*******++++.                                           ...++++***********####
// CHECK: ###**++*+..+...                                           ...+++************####
// CHECK: ###                                                       ...+++************####
// CHECK: ###*********+++++++++.........     ......                   ..++************####
// CHECK: ####****************++++++....................               .++***********#####
// CHECK: #####********************++++++++++++++++........             .+***********#####
// CHECK: ########****************************+++++++++.......          ++***********#####
// CHECK: ###########*******************************++++++......      ..++**********######
// CHECK: ###############*******************************+++++.........++++*********#######
// CHECK: ####################****************************++++++++++++++**********########
// CHECK: ##########################*************************+++++++++***********#########
// CHECK: ################################**************************************##########
// CHECK: ####################################********************************############
// CHECK: ########################################***************************#############
// CHECK: ###########################################**********************###############
// CHECK: #############################################*****************##################
// CHECK: ################################################***********#####################

