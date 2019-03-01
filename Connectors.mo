package Connectors
  connector pin
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation();
  end pin;

  connector PositivePin
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Diagram,
      Icon);
  end PositivePin;

  connector NegativePin
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation();
  end NegativePin;

  partial model Twopin
    Modelica.SIunits.Voltage v;
    Modelica.SIunits.Current i;
    Connectors.PositivePin p annotation(
      Placement(visible = true, transformation(origin = {-66, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Connectors.NegativePin n annotation(
      Placement(visible = true, transformation(origin = {74, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {72, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    v = p.v - n.v;
    0 = p.i + n.i;
    i = p.i;
    annotation(
      Diagram,
      Icon(graphics = {Ellipse(origin = {8, 3}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-24, 23}, {26, -23}}, endAngle = 360), Line(origin = {48.5, 0}, points = {{-14.5, 0}, {15.5, 0}}), Line(origin = {-56, 4}, points = {{0, 0}}), Line(origin = {23.5268, 1.36766}, points = {{-8, 0}, {8, 0}, {8, 0}}), Line(origin = {0.206612, 1.36767}, points = {{0, 6}, {0, -6}}), Line(origin = {-39.5899, -1.58989}, points = {{-20.4101, 1.58989}, {23.5899, 1.58989}}), Line(origin = {0.888901, 1.55556}, points = {{-5, 0}, {5, 0}})}, coordinateSystem(initialScale = 0.1)));
  end Twopin;

  package Model
    model Voltaje
      extends Connectors.Twopin;
      parameter Modelica.SIunits.Voltaje V "Voltaje en voltios";
    equation
      v = V;
      annotation(
        Icon(coordinateSystem(initialScale = 0.1)));
    end Voltaje;
    annotation(
      Diagram(coordinateSystem(initialScale = 0.1)));
  end Model;
  annotation(
    uses(Modelica(version = "3.2.3")));
end Connectors;
