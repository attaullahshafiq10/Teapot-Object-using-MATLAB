%%%%% Create Teapot Patch Object %%%%%



% Get Geometry of Object
[verts, faces, cindex] = teapotGeometry;

% Using the geometry data, draw the teapot using the patch command
figure
p = patch('Faces',faces,'Vertices',verts,'FaceVertexCData',cindex,'FaceColor','interp')



% Use the view command to change the orientation of the object.
view(-151,30)   % change the orientation
axis equal off  % make the axes equal and invisible

% Adjust Transparency
p.FaceAlpha = 0.3;  % make the object semi-transparent

% If the FaceColorproperty is set to 'none', then the object appears as a wire frame diagram.
p.FaceColor = 'none';  % turn off the colors

% Change Colormap
p.FaceAlpha = 1;  % remove the transparency
p.FaceColor = 'interp';  % set the face colors to be interpolated
p.LineStyle = 'none';  % remove the lines
colormap(copper)  % change the colormap

% Light the Object
l = light('Position',[-0.4 0.2 0.9],'Style','infinite')



lighting gouraud




% To set these properties to a predetermined set of values that approximate the appearance of metal, shiny, or dull material, use the materialcommand.
material shiny

% Adjust the position of the light using its Positionproperty. The position is in x, y, zcoordinates.
l.Position = [-0.1 0.6 0.8]