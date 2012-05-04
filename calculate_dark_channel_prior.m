function [dark_channel] = calculate_dark_channel_prior(patch)
    dark_channel = min(min(min(patch)));
end