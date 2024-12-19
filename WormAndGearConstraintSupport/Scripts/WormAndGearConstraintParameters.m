% -------------------------------------------------------------------
%  Generated by MATLAB on 28-Sep-2024 00:45:57
%  MATLAB version: 9.14.0.2206163 (R2023a)
% -------------------------------------------------------------------
                                                          

Kd = 5;

colors = struct;
colors.orange = [1 0.6 0];
colors.red = [1 0.2 0];
colors.dgreen = [0 0.4 0];
colors.green = [0 0.6 0];
colors.lgreen = [0 0.8 0];
colors.dblue = [0 0.2 1];
colors.blue = [0.2 0.6 1];
colors.lblue = [0.4 0.8 1];
colors.brown = [0.4 0.2 0];
colors.lbrown = [0.8 0.4 0];
colors.yellow = [1 0.8 0];
colors.lyellow = [1 1 0];
colors.black = [0 0 0];
colors.white = [1 1 1];
colors.dgrey = [0.3 0.3 0.3];
colors.grey = [0.5 0.5 0.5];
colors.lgrey = [0.7 0.7 0.7];
colors.vlgrey = [0.9 0.9 0.9];

densities = struct;
densities.wood = 650;
densities.plastic = 920;
densities.water = 1000;
densities.aluminum = 2700;
densities.steel = 7800;
densities.titanium = 4500;
densities.brass = 8600;

driveconn = struct;
driveconn.connectionRadius = 0.05;
driveconn.connectionThickness = 0.005;
driveconn.connectionLength = 0.03;
driveconn.bracketWidthHeight = 0.1;
driveconn.bracketThickness = 0.15;
driveconn.holeRadius = 0.02;
driveconn.holeOffset = 0.06;
driveconn.baseThickness = 0.01;
driveconn.density = 2700;
driveconn.color = [0.5 0.5 0.5];

frame = struct;
frame.width = 1;
frame.height = 1.4;
frame.depth = 0.1;
frame.beamWidth = 0.05;
frame.beamThickness = 0.01;
frame.frameWidth = 0.02;
frame.frameThickness = 0.005;
frame.density = 2700;
frame.beamColor = [0.5 0.5 0.5];
frame.frameColor = [0.7 0.7 0.7];

framemount = struct;
framemount.bracketWidthHeight = 0.1;
framemount.bracketThickness = 0.01;
framemount.bracketOffset = 0.18;
framemount.holeRadius = 0.02;
framemount.holeOffset = 0.06;
framemount.baseThickness = 0.01;
framemount.density = 2700;
framemount.mountColor = [0.5 0.5 0.5];
framemount.pinColor = [0.3 0.3 0.3];

panelrevolute = struct;
panelrevolute.q0 = -60;

pitchsignal = struct;
pitchsignal.t_c = 0.2;

slewdrive = struct;
slewdrive.wormLeadAngle = 10;
slewdrive.wormLength = 0.17;
slewdrive.gearOuterRadius = 0.1;
slewdrive.gearInnerRadius = 0.03;
slewdrive.gearExposedRadius = 0.06;
slewdrive.housingThickness = 0.005;
slewdrive.ratio = 50;
slewdrive.wormRevoluteDamping = 1E-6;
slewdrive.wormDensity = 7800;
slewdrive.gearDensity = 7800;
slewdrive.housingDensity = 2700;
slewdrive.wormColor = [0.7 0.7 0.7];
slewdrive.gearColor = [0.6 0.6 0.6];
slewdrive.housingColor = [0.1 0.6 1];
slewdrive.housingOpacity = 0.3;

solarpanel = struct;
solarpanel.width = 1;
solarpanel.height = 1.4;
solarpanel.frameWidth = 0.02;
solarpanel.frameDepth = 0.01;
solarpanel.cellDensity = 100;
solarpanel.frameDensity = 950;
solarpanel.cellColor = [0 0 0.5];
solarpanel.frameColor = [0.9 0.9 0.9];

support = struct;
support.columnRadius = 0.05;
support.columnThickness = 0.005;
support.columnHeight = 0.9;
support.baseWidth = 0.2;
support.baseThickness = 0.02;
support.density = 2700;
support.color = [0.5 0.5 0.5];

tracker1_offset = [0 0 0];

tracker2_offset = [1.5 0 0];

tracker3_offset = [3 0 0];

yawsignal = struct;
yawsignal.t_c = 0.2;
