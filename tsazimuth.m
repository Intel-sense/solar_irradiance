function sendTsAzimuthToThingSpeak()
    % Declare the global variable for Azimuth
    global tsAzimuth;

    % Check if tsAzimuth exists and is not empty
    if isempty(tsAzimuth)
        error('tsAzimuth is empty or not initialized. Please initialize it with data before running this function.');
    end

    % Use tsAzimuth directly as an array
    azimuthValues = tsAzimuth;  % Azimuth angle values
    
    % ThingSpeak details
    channelID = 2782990;  % Replace with your actual channel ID
    writeKey = 'YRCARQQUT1YMM4MQ';  % Replace with your actual Write API Key
    
    % Parameters
    numDataPoints = numel(azimuthValues);  % Total number of points
    delayDuration = 10;  % Delay in seconds between sending each value

    % Loop to send data to ThingSpeak
    for i = 1:numDataPoints
        valueToSend = azimuthValues(i);  % Access the current Azimuth value

        % Log the time and value being sent
        fprintf('Azimuth Value: %f\n', valueToSend);

        % Write data to ThingSpeak (sending to Field 1 for Azimuth Angle)
        try
            thingSpeakWrite(channelID, valueToSend, 'WriteKey', writeKey, 'Field', 1);
            fprintf('Sent Azimuth value %f to ThingSpeak at iteration %d.\n', valueToSend, i);
        catch ME
            fprintf('Error sending data at iteration %d: %s\n', i, ME.message);
        end

        % Delay before sending the next value
        pause(delayDuration);
    end

    fprintf('All Azimuth data has been sent to ThingSpeak.\n');
end
