% Function to send tsAzimuth data to ThingSpeak with a 10-second delay between each column
function sendTsAzimuthToThingSpeak()
    % Declare the global variable tsAzimuth
    global tsAzimuth;

    % Your ThingSpeak channel details
    channelID = 2782990; % Your Channel ID
    writeKey = 'YRCARQQUT1YMM4MQ'; % Your Write API Key

    % Check if tsAzimuth exists and is not empty
    if isempty(tsAzimuth)
        fprintf('The variable tsAzimuth is empty, skipping.\n');
        return;
    else
        fprintf('Variable tsAzimuth has data with size: %s\n', mat2str(size(tsAzimuth)));
    end

    % Loop through each column in tsAzimuth (assuming columns represent different data points)
    numColumns = size(tsAzimuth, 2);  % Number of columns in tsAzimuth
    for col = 1:numColumns
        % Extract the data from the current column
        valueToSend = tsAzimuth(:, col);

        % Write data to ThingSpeak for Field 1 (Azimuth Angle)
        try
            thingSpeakWrite(channelID, valueToSend, 'WriteKey', writeKey, 'Field', 1);
            fprintf('Sent data from column %d of tsAzimuth to ThingSpeak.\n', col);
        catch ME
            fprintf('Error sending data: %s\n', ME.message);
        end

        % Add a delay of 10 seconds before sending the next column
        pause(10);
    end

    fprintf('All data from tsAzimuth has been sent to ThingSpeak.\n');
end

% Call the function to start sending data to ThingSpeak
sendTsAzimuthToThingSpeak();
