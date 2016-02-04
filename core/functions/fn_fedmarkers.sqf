_marker = getMarkerPos "fed_1";

createMarker ["Markerfed", _marker];
"Markerfed" setMarkerColor "ColorRed";
"Markerfed" setMarkerText "!! Active Robbery !!";
"Markerfed" setMarkerType "Mil_dot";

createMarker ["fed_redZone", _marker];
"fed_redZone" setMarkerColor "ColorRed";
"fed_redZone" setMarkerShape "ELLIPSE";
"fed_redZone" setMarkerSize [500, 500];
"fed_redZone" setMarkerBrush "DiagGrid";

sleep (25*60);
deleteMarker "Markerfed";
deleteMarker "fed_redZone"